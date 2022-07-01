.class public final enum Lccsansan/bc/unifiedDownload$unifiedDownload;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/bc/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "unifiedDownload"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/bc/unifiedDownload$unifiedDownload;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/bc/unifiedDownload$unifiedDownload;

.field public static final enum APP:Lccsansan/bc/unifiedDownload$unifiedDownload;

.field public static final enum GAME:Lccsansan/bc/unifiedDownload$unifiedDownload;

.field public static final enum NATIVE_APP:Lccsansan/bc/unifiedDownload$unifiedDownload;

.field public static final enum WIDGET:Lccsansan/bc/unifiedDownload$unifiedDownload;

.field private static mValues:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsansan/bc/unifiedDownload$unifiedDownload;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lccsansan/bc/unifiedDownload$unifiedDownload;

    const-string v1, "GAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lccsansan/bc/unifiedDownload$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lccsansan/bc/unifiedDownload$unifiedDownload;->GAME:Lccsansan/bc/unifiedDownload$unifiedDownload;

    new-instance v1, Lccsansan/bc/unifiedDownload$unifiedDownload;

    const-string v3, "NATIVE_APP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lccsansan/bc/unifiedDownload$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lccsansan/bc/unifiedDownload$unifiedDownload;->NATIVE_APP:Lccsansan/bc/unifiedDownload$unifiedDownload;

    new-instance v3, Lccsansan/bc/unifiedDownload$unifiedDownload;

    const-string v5, "APP"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lccsansan/bc/unifiedDownload$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lccsansan/bc/unifiedDownload$unifiedDownload;->APP:Lccsansan/bc/unifiedDownload$unifiedDownload;

    new-instance v5, Lccsansan/bc/unifiedDownload$unifiedDownload;

    const-string v7, "WIDGET"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lccsansan/bc/unifiedDownload$unifiedDownload;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lccsansan/bc/unifiedDownload$unifiedDownload;->WIDGET:Lccsansan/bc/unifiedDownload$unifiedDownload;

    .line 2
    const/4 v7, 0x4

    new-array v7, v7, [Lccsansan/bc/unifiedDownload$unifiedDownload;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lccsansan/bc/unifiedDownload$unifiedDownload;->$VALUES:[Lccsansan/bc/unifiedDownload$unifiedDownload;

    .line 11
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    sput-object v0, Lccsansan/bc/unifiedDownload$unifiedDownload;->mValues:Lccsanandroid/util/SparseArray;

    .line 14
    invoke-static {}, Lccsansan/bc/unifiedDownload$unifiedDownload;->values()[Lccsansan/bc/unifiedDownload$unifiedDownload;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 15
    sget-object v4, Lccsansan/bc/unifiedDownload$unifiedDownload;->mValues:Lccsanandroid/util/SparseArray;

    iget v5, v3, Lccsansan/bc/unifiedDownload$unifiedDownload;->mValue:I

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
    iput p3, p0, Lccsansan/bc/unifiedDownload$unifiedDownload;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lccsansan/bc/unifiedDownload$unifiedDownload;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/bc/unifiedDownload$unifiedDownload;->mValues:Lccsanandroid/util/SparseArray;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsansan/bc/unifiedDownload$unifiedDownload;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/bc/unifiedDownload$unifiedDownload;
    .locals 1

    .line 1
    const-class v0, Lccsansan/bc/unifiedDownload$unifiedDownload;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/bc/unifiedDownload$unifiedDownload;

    return-object p0
.end method

.method public static values()[Lccsansan/bc/unifiedDownload$unifiedDownload;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/bc/unifiedDownload$unifiedDownload;->$VALUES:[Lccsansan/bc/unifiedDownload$unifiedDownload;

    invoke-virtual {v0}, [Lccsansan/bc/unifiedDownload$unifiedDownload;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/bc/unifiedDownload$unifiedDownload;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/bc/unifiedDownload$unifiedDownload;->mValue:I

    return v0
.end method
