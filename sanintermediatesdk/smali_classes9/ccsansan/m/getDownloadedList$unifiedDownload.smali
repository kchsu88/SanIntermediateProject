.class public final enum Lccsansan/m/getDownloadedList$unifiedDownload;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/m/getDownloadedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "unifiedDownload"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/m/getDownloadedList$unifiedDownload;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/m/getDownloadedList$unifiedDownload;

.field public static final enum ACTIVE:Lccsansan/m/getDownloadedList$unifiedDownload;

.field public static final enum ADD_XZ_LIST:Lccsansan/m/getDownloadedList$unifiedDownload;

.field public static final enum AZ_EXCEPTION:Lccsansan/m/getDownloadedList$unifiedDownload;

.field public static final enum AZ_SUCCESS:Lccsansan/m/getDownloadedList$unifiedDownload;

.field public static final enum CLICK:Lccsansan/m/getDownloadedList$unifiedDownload;

.field public static final enum IMPRESSION:Lccsansan/m/getDownloadedList$unifiedDownload;

.field public static final enum NO_ACTIVE:Lccsansan/m/getDownloadedList$unifiedDownload;

.field public static final enum NO_PERMISSION:Lccsansan/m/getDownloadedList$unifiedDownload;

.field public static final enum OPEN_ERROR:Lccsansan/m/getDownloadedList$unifiedDownload;

.field public static final enum OPEN_NOT_AZ:Lccsansan/m/getDownloadedList$unifiedDownload;

.field public static final enum OPEN_SUCCESS:Lccsansan/m/getDownloadedList$unifiedDownload;

.field public static final enum P2P_FAILED:Lccsansan/m/getDownloadedList$unifiedDownload;

.field public static final enum P2P_SUCCESS:Lccsansan/m/getDownloadedList$unifiedDownload;

.field public static final enum PAUSE_XZ:Lccsansan/m/getDownloadedList$unifiedDownload;

.field public static final enum START_XZ:Lccsansan/m/getDownloadedList$unifiedDownload;

.field public static final enum START_XZ_FAILED:Lccsansan/m/getDownloadedList$unifiedDownload;

.field public static final enum SYSTEM_AZ:Lccsansan/m/getDownloadedList$unifiedDownload;

.field public static final TAG:Ljava/lang/String; = "CpiStatus"

.field public static final enum XZING:Lccsansan/m/getDownloadedList$unifiedDownload;

.field public static final enum XZ_FAILED:Lccsansan/m/getDownloadedList$unifiedDownload;

.field public static final enum XZ_SUCCESS:Lccsansan/m/getDownloadedList$unifiedDownload;

.field private static mValues:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsansan/m/getDownloadedList$unifiedDownload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v0, Lccsansan/m/getDownloadedList$unifiedDownload;

    const-string v1, "IMPRESSION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lccsansan/m/getDownloadedList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lccsansan/m/getDownloadedList$unifiedDownload;->IMPRESSION:Lccsansan/m/getDownloadedList$unifiedDownload;

    new-instance v1, Lccsansan/m/getDownloadedList$unifiedDownload;

    const-string v3, "CLICK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lccsansan/m/getDownloadedList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lccsansan/m/getDownloadedList$unifiedDownload;->CLICK:Lccsansan/m/getDownloadedList$unifiedDownload;

    new-instance v3, Lccsansan/m/getDownloadedList$unifiedDownload;

    const-string v5, "ADD_XZ_LIST"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lccsansan/m/getDownloadedList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lccsansan/m/getDownloadedList$unifiedDownload;->ADD_XZ_LIST:Lccsansan/m/getDownloadedList$unifiedDownload;

    new-instance v5, Lccsansan/m/getDownloadedList$unifiedDownload;

    const-string v7, "START_XZ"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lccsansan/m/getDownloadedList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lccsansan/m/getDownloadedList$unifiedDownload;->START_XZ:Lccsansan/m/getDownloadedList$unifiedDownload;

    new-instance v7, Lccsansan/m/getDownloadedList$unifiedDownload;

    const-string v9, "START_XZ_FAILED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lccsansan/m/getDownloadedList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lccsansan/m/getDownloadedList$unifiedDownload;->START_XZ_FAILED:Lccsansan/m/getDownloadedList$unifiedDownload;

    new-instance v9, Lccsansan/m/getDownloadedList$unifiedDownload;

    const-string v11, "PAUSE_XZ"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lccsansan/m/getDownloadedList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lccsansan/m/getDownloadedList$unifiedDownload;->PAUSE_XZ:Lccsansan/m/getDownloadedList$unifiedDownload;

    new-instance v11, Lccsansan/m/getDownloadedList$unifiedDownload;

    const-string v13, "XZ_SUCCESS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lccsansan/m/getDownloadedList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lccsansan/m/getDownloadedList$unifiedDownload;->XZ_SUCCESS:Lccsansan/m/getDownloadedList$unifiedDownload;

    new-instance v13, Lccsansan/m/getDownloadedList$unifiedDownload;

    const-string v15, "XZ_FAILED"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lccsansan/m/getDownloadedList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lccsansan/m/getDownloadedList$unifiedDownload;->XZ_FAILED:Lccsansan/m/getDownloadedList$unifiedDownload;

    new-instance v15, Lccsansan/m/getDownloadedList$unifiedDownload;

    const-string v14, "P2P_SUCCESS"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lccsansan/m/getDownloadedList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lccsansan/m/getDownloadedList$unifiedDownload;->P2P_SUCCESS:Lccsansan/m/getDownloadedList$unifiedDownload;

    new-instance v14, Lccsansan/m/getDownloadedList$unifiedDownload;

    const-string v12, "P2P_FAILED"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lccsansan/m/getDownloadedList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lccsansan/m/getDownloadedList$unifiedDownload;->P2P_FAILED:Lccsansan/m/getDownloadedList$unifiedDownload;

    new-instance v12, Lccsansan/m/getDownloadedList$unifiedDownload;

    const-string v10, "SYSTEM_AZ"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8, v8}, Lccsansan/m/getDownloadedList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lccsansan/m/getDownloadedList$unifiedDownload;->SYSTEM_AZ:Lccsansan/m/getDownloadedList$unifiedDownload;

    new-instance v10, Lccsansan/m/getDownloadedList$unifiedDownload;

    const-string v8, "NO_PERMISSION"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6, v6}, Lccsansan/m/getDownloadedList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lccsansan/m/getDownloadedList$unifiedDownload;->NO_PERMISSION:Lccsansan/m/getDownloadedList$unifiedDownload;

    new-instance v8, Lccsansan/m/getDownloadedList$unifiedDownload;

    const-string v6, "AZ_EXCEPTION"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4, v4}, Lccsansan/m/getDownloadedList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lccsansan/m/getDownloadedList$unifiedDownload;->AZ_EXCEPTION:Lccsansan/m/getDownloadedList$unifiedDownload;

    new-instance v6, Lccsansan/m/getDownloadedList$unifiedDownload;

    const-string v4, "AZ_SUCCESS"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2, v2}, Lccsansan/m/getDownloadedList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lccsansan/m/getDownloadedList$unifiedDownload;->AZ_SUCCESS:Lccsansan/m/getDownloadedList$unifiedDownload;

    new-instance v4, Lccsansan/m/getDownloadedList$unifiedDownload;

    const-string v2, "OPEN_SUCCESS"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6, v6}, Lccsansan/m/getDownloadedList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lccsansan/m/getDownloadedList$unifiedDownload;->OPEN_SUCCESS:Lccsansan/m/getDownloadedList$unifiedDownload;

    new-instance v2, Lccsansan/m/getDownloadedList$unifiedDownload;

    const-string v6, "OPEN_ERROR"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4, v4}, Lccsansan/m/getDownloadedList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lccsansan/m/getDownloadedList$unifiedDownload;->OPEN_ERROR:Lccsansan/m/getDownloadedList$unifiedDownload;

    new-instance v6, Lccsansan/m/getDownloadedList$unifiedDownload;

    const-string v4, "OPEN_NOT_AZ"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2, v2}, Lccsansan/m/getDownloadedList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lccsansan/m/getDownloadedList$unifiedDownload;->OPEN_NOT_AZ:Lccsansan/m/getDownloadedList$unifiedDownload;

    new-instance v4, Lccsansan/m/getDownloadedList$unifiedDownload;

    const-string v2, "ACTIVE"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6, v6}, Lccsansan/m/getDownloadedList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lccsansan/m/getDownloadedList$unifiedDownload;->ACTIVE:Lccsansan/m/getDownloadedList$unifiedDownload;

    new-instance v2, Lccsansan/m/getDownloadedList$unifiedDownload;

    const-string v6, "NO_ACTIVE"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4, v4}, Lccsansan/m/getDownloadedList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lccsansan/m/getDownloadedList$unifiedDownload;->NO_ACTIVE:Lccsansan/m/getDownloadedList$unifiedDownload;

    new-instance v6, Lccsansan/m/getDownloadedList$unifiedDownload;

    const-string v4, "XZING"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2, v2}, Lccsansan/m/getDownloadedList$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lccsansan/m/getDownloadedList$unifiedDownload;->XZING:Lccsansan/m/getDownloadedList$unifiedDownload;

    .line 2
    const/16 v4, 0x14

    new-array v4, v4, [Lccsansan/m/getDownloadedList$unifiedDownload;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Lccsansan/m/getDownloadedList$unifiedDownload;->$VALUES:[Lccsansan/m/getDownloadedList$unifiedDownload;

    .line 12
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    sput-object v0, Lccsansan/m/getDownloadedList$unifiedDownload;->mValues:Lccsanandroid/util/SparseArray;

    .line 15
    invoke-static {}, Lccsansan/m/getDownloadedList$unifiedDownload;->values()[Lccsansan/m/getDownloadedList$unifiedDownload;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 16
    sget-object v4, Lccsansan/m/getDownloadedList$unifiedDownload;->mValues:Lccsanandroid/util/SparseArray;

    iget v5, v3, Lccsansan/m/getDownloadedList$unifiedDownload;->mValue:I

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
    iput p3, p0, Lccsansan/m/getDownloadedList$unifiedDownload;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lccsansan/m/getDownloadedList$unifiedDownload;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/m/getDownloadedList$unifiedDownload;->mValues:Lccsanandroid/util/SparseArray;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsansan/m/getDownloadedList$unifiedDownload;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/m/getDownloadedList$unifiedDownload;
    .locals 1

    .line 1
    const-class v0, Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/m/getDownloadedList$unifiedDownload;

    return-object p0
.end method

.method public static values()[Lccsansan/m/getDownloadedList$unifiedDownload;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/m/getDownloadedList$unifiedDownload;->$VALUES:[Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v0}, [Lccsansan/m/getDownloadedList$unifiedDownload;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/m/getDownloadedList$unifiedDownload;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/m/getDownloadedList$unifiedDownload;->mValue:I

    return v0
.end method
