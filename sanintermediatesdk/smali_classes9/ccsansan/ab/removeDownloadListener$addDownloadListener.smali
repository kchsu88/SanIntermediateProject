.class public final enum Lccsansan/ab/removeDownloadListener$addDownloadListener;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ab/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "addDownloadListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/ab/removeDownloadListener$addDownloadListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/ab/removeDownloadListener$addDownloadListener;

.field public static final enum MOBILE:Lccsansan/ab/removeDownloadListener$addDownloadListener;

.field public static final enum OFFLINE:Lccsansan/ab/removeDownloadListener$addDownloadListener;

.field public static final enum UNKNOWN:Lccsansan/ab/removeDownloadListener$addDownloadListener;

.field private static final VALUES:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsansan/ab/removeDownloadListener$addDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum WIFI:Lccsansan/ab/removeDownloadListener$addDownloadListener;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lccsansan/ab/removeDownloadListener$addDownloadListener;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lccsansan/ab/removeDownloadListener$addDownloadListener;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lccsansan/ab/removeDownloadListener$addDownloadListener;->UNKNOWN:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    new-instance v1, Lccsansan/ab/removeDownloadListener$addDownloadListener;

    const-string v3, "OFFLINE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lccsansan/ab/removeDownloadListener$addDownloadListener;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lccsansan/ab/removeDownloadListener$addDownloadListener;->OFFLINE:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    new-instance v3, Lccsansan/ab/removeDownloadListener$addDownloadListener;

    const-string v5, "WIFI"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lccsansan/ab/removeDownloadListener$addDownloadListener;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lccsansan/ab/removeDownloadListener$addDownloadListener;->WIFI:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    new-instance v5, Lccsansan/ab/removeDownloadListener$addDownloadListener;

    const-string v7, "MOBILE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lccsansan/ab/removeDownloadListener$addDownloadListener;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lccsansan/ab/removeDownloadListener$addDownloadListener;->MOBILE:Lccsansan/ab/removeDownloadListener$addDownloadListener;

    .line 2
    const/4 v7, 0x4

    new-array v7, v7, [Lccsansan/ab/removeDownloadListener$addDownloadListener;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lccsansan/ab/removeDownloadListener$addDownloadListener;->$VALUES:[Lccsansan/ab/removeDownloadListener$addDownloadListener;

    .line 5
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    sput-object v0, Lccsansan/ab/removeDownloadListener$addDownloadListener;->VALUES:Lccsanandroid/util/SparseArray;

    .line 8
    invoke-static {}, Lccsansan/ab/removeDownloadListener$addDownloadListener;->values()[Lccsansan/ab/removeDownloadListener$addDownloadListener;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 9
    sget-object v4, Lccsansan/ab/removeDownloadListener$addDownloadListener;->VALUES:Lccsanandroid/util/SparseArray;

    iget v5, v3, Lccsansan/ab/removeDownloadListener$addDownloadListener;->mValue:I

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
    iput p3, p0, Lccsansan/ab/removeDownloadListener$addDownloadListener;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lccsansan/ab/removeDownloadListener$addDownloadListener;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/ab/removeDownloadListener$addDownloadListener;->VALUES:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0, p0}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsansan/ab/removeDownloadListener$addDownloadListener;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/ab/removeDownloadListener$addDownloadListener;
    .locals 1

    .line 1
    const-class v0, Lccsansan/ab/removeDownloadListener$addDownloadListener;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/ab/removeDownloadListener$addDownloadListener;

    return-object p0
.end method

.method public static values()[Lccsansan/ab/removeDownloadListener$addDownloadListener;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/ab/removeDownloadListener$addDownloadListener;->$VALUES:[Lccsansan/ab/removeDownloadListener$addDownloadListener;

    invoke-virtual {v0}, [Lccsansan/ab/removeDownloadListener$addDownloadListener;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/ab/removeDownloadListener$addDownloadListener;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/ab/removeDownloadListener$addDownloadListener;->mValue:I

    return v0
.end method
