.class public final enum Lccsansan/ae/unifiedDownload$getDownloadingList;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ae/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "getDownloadingList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/ae/unifiedDownload$getDownloadingList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/ae/unifiedDownload$getDownloadingList;

.field public static final enum SDCARD:Lccsansan/ae/unifiedDownload$getDownloadingList;

.field public static final enum SYSTEM:Lccsansan/ae/unifiedDownload$getDownloadingList;

.field public static final TAG:Ljava/lang/String; = "AppCategoryLocation"

.field public static final enum UNKNOWN:Lccsansan/ae/unifiedDownload$getDownloadingList;

.field private static mValues:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsansan/ae/unifiedDownload$getDownloadingList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lccsansan/ae/unifiedDownload$getDownloadingList;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lccsansan/ae/unifiedDownload$getDownloadingList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lccsansan/ae/unifiedDownload$getDownloadingList;->UNKNOWN:Lccsansan/ae/unifiedDownload$getDownloadingList;

    new-instance v1, Lccsansan/ae/unifiedDownload$getDownloadingList;

    const-string v3, "SYSTEM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lccsansan/ae/unifiedDownload$getDownloadingList;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lccsansan/ae/unifiedDownload$getDownloadingList;->SYSTEM:Lccsansan/ae/unifiedDownload$getDownloadingList;

    new-instance v3, Lccsansan/ae/unifiedDownload$getDownloadingList;

    const-string v5, "SDCARD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lccsansan/ae/unifiedDownload$getDownloadingList;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lccsansan/ae/unifiedDownload$getDownloadingList;->SDCARD:Lccsansan/ae/unifiedDownload$getDownloadingList;

    .line 2
    const/4 v5, 0x3

    new-array v5, v5, [Lccsansan/ae/unifiedDownload$getDownloadingList;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lccsansan/ae/unifiedDownload$getDownloadingList;->$VALUES:[Lccsansan/ae/unifiedDownload$getDownloadingList;

    .line 12
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    sput-object v0, Lccsansan/ae/unifiedDownload$getDownloadingList;->mValues:Lccsanandroid/util/SparseArray;

    .line 15
    invoke-static {}, Lccsansan/ae/unifiedDownload$getDownloadingList;->values()[Lccsansan/ae/unifiedDownload$getDownloadingList;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 16
    sget-object v4, Lccsansan/ae/unifiedDownload$getDownloadingList;->mValues:Lccsanandroid/util/SparseArray;

    iget v5, v3, Lccsansan/ae/unifiedDownload$getDownloadingList;->mValue:I

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
    iput p3, p0, Lccsansan/ae/unifiedDownload$getDownloadingList;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lccsansan/ae/unifiedDownload$getDownloadingList;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/ae/unifiedDownload$getDownloadingList;->mValues:Lccsanandroid/util/SparseArray;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsansan/ae/unifiedDownload$getDownloadingList;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/ae/unifiedDownload$getDownloadingList;
    .locals 1

    .line 1
    const-class v0, Lccsansan/ae/unifiedDownload$getDownloadingList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/ae/unifiedDownload$getDownloadingList;

    return-object p0
.end method

.method public static values()[Lccsansan/ae/unifiedDownload$getDownloadingList;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/ae/unifiedDownload$getDownloadingList;->$VALUES:[Lccsansan/ae/unifiedDownload$getDownloadingList;

    invoke-virtual {v0}, [Lccsansan/ae/unifiedDownload$getDownloadingList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/ae/unifiedDownload$getDownloadingList;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/ae/unifiedDownload$getDownloadingList;->mValue:I

    return v0
.end method
