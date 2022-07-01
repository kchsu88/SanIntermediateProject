.class public final enum Lccsansan/aj/getDownloadingList$unifiedDownload;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/aj/getDownloadingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "unifiedDownload"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/aj/getDownloadingList$unifiedDownload;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/aj/getDownloadingList$unifiedDownload;

.field public static final enum ALL:Lccsansan/aj/getDownloadingList$unifiedDownload;

.field public static final enum MOBILE:Lccsansan/aj/getDownloadingList$unifiedDownload;

.field public static final enum WIFI:Lccsansan/aj/getDownloadingList$unifiedDownload;

.field private static mValues:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsansan/aj/getDownloadingList$unifiedDownload;",
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
    new-instance v0, Lccsansan/aj/getDownloadingList$unifiedDownload;

    const-string v1, "ALL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lccsansan/aj/getDownloadingList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lccsansan/aj/getDownloadingList$unifiedDownload;->ALL:Lccsansan/aj/getDownloadingList$unifiedDownload;

    new-instance v1, Lccsansan/aj/getDownloadingList$unifiedDownload;

    const-string v4, "WIFI"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lccsansan/aj/getDownloadingList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lccsansan/aj/getDownloadingList$unifiedDownload;->WIFI:Lccsansan/aj/getDownloadingList$unifiedDownload;

    new-instance v4, Lccsansan/aj/getDownloadingList$unifiedDownload;

    const-string v6, "MOBILE"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lccsansan/aj/getDownloadingList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lccsansan/aj/getDownloadingList$unifiedDownload;->MOBILE:Lccsansan/aj/getDownloadingList$unifiedDownload;

    .line 2
    new-array v6, v7, [Lccsansan/aj/getDownloadingList$unifiedDownload;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lccsansan/aj/getDownloadingList$unifiedDownload;->$VALUES:[Lccsansan/aj/getDownloadingList$unifiedDownload;

    .line 11
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    sput-object v0, Lccsansan/aj/getDownloadingList$unifiedDownload;->mValues:Lccsanandroid/util/SparseArray;

    .line 14
    invoke-static {}, Lccsansan/aj/getDownloadingList$unifiedDownload;->values()[Lccsansan/aj/getDownloadingList$unifiedDownload;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 15
    sget-object v4, Lccsansan/aj/getDownloadingList$unifiedDownload;->mValues:Lccsanandroid/util/SparseArray;

    iget v5, v3, Lccsansan/aj/getDownloadingList$unifiedDownload;->mValue:I

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
    iput p3, p0, Lccsansan/aj/getDownloadingList$unifiedDownload;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lccsansan/aj/getDownloadingList$unifiedDownload;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/aj/getDownloadingList$unifiedDownload;->mValues:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0, p0}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsansan/aj/getDownloadingList$unifiedDownload;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/aj/getDownloadingList$unifiedDownload;
    .locals 1

    .line 1
    const-class v0, Lccsansan/aj/getDownloadingList$unifiedDownload;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/aj/getDownloadingList$unifiedDownload;

    return-object p0
.end method

.method public static values()[Lccsansan/aj/getDownloadingList$unifiedDownload;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/aj/getDownloadingList$unifiedDownload;->$VALUES:[Lccsansan/aj/getDownloadingList$unifiedDownload;

    invoke-virtual {v0}, [Lccsansan/aj/getDownloadingList$unifiedDownload;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/aj/getDownloadingList$unifiedDownload;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/aj/getDownloadingList$unifiedDownload;->mValue:I

    return v0
.end method
