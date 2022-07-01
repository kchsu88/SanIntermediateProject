.class public final enum Lccsansan/ai/removeDownloadListener$getDownloadingList;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/ai/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "getDownloadingList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsansan/ai/removeDownloadListener$getDownloadingList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsansan/ai/removeDownloadListener$getDownloadingList;

.field public static final enum Custom:Lccsansan/ai/removeDownloadListener$getDownloadingList;

.field public static final enum PageIn:Lccsansan/ai/removeDownloadListener$getDownloadingList;

.field public static final enum PageOut:Lccsansan/ai/removeDownloadListener$getDownloadingList;

.field public static final enum UnhandledException:Lccsansan/ai/removeDownloadListener$getDownloadingList;


# instance fields
.field mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lccsansan/ai/removeDownloadListener$getDownloadingList;

    const-string v1, "Custom"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lccsansan/ai/removeDownloadListener$getDownloadingList;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lccsansan/ai/removeDownloadListener$getDownloadingList;->Custom:Lccsansan/ai/removeDownloadListener$getDownloadingList;

    new-instance v1, Lccsansan/ai/removeDownloadListener$getDownloadingList;

    const-string v3, "PageIn"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lccsansan/ai/removeDownloadListener$getDownloadingList;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lccsansan/ai/removeDownloadListener$getDownloadingList;->PageIn:Lccsansan/ai/removeDownloadListener$getDownloadingList;

    new-instance v3, Lccsansan/ai/removeDownloadListener$getDownloadingList;

    const-string v5, "PageOut"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lccsansan/ai/removeDownloadListener$getDownloadingList;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lccsansan/ai/removeDownloadListener$getDownloadingList;->PageOut:Lccsansan/ai/removeDownloadListener$getDownloadingList;

    new-instance v5, Lccsansan/ai/removeDownloadListener$getDownloadingList;

    const-string v7, "UnhandledException"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lccsansan/ai/removeDownloadListener$getDownloadingList;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lccsansan/ai/removeDownloadListener$getDownloadingList;->UnhandledException:Lccsansan/ai/removeDownloadListener$getDownloadingList;

    .line 2
    const/4 v7, 0x4

    new-array v7, v7, [Lccsansan/ai/removeDownloadListener$getDownloadingList;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lccsansan/ai/removeDownloadListener$getDownloadingList;->$VALUES:[Lccsansan/ai/removeDownloadListener$getDownloadingList;

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
    iput p3, p0, Lccsansan/ai/removeDownloadListener$getDownloadingList;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lccsansan/ai/removeDownloadListener$getDownloadingList;
    .locals 5

    .line 1
    invoke-static {}, Lccsansan/ai/removeDownloadListener$getDownloadingList;->values()[Lccsansan/ai/removeDownloadListener$getDownloadingList;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2
    iget v4, v3, Lccsansan/ai/removeDownloadListener$getDownloadingList;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lccsansan/ai/removeDownloadListener$getDownloadingList;->Custom:Lccsansan/ai/removeDownloadListener$getDownloadingList;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lccsansan/ai/removeDownloadListener$getDownloadingList;
    .locals 1

    .line 1
    const-class v0, Lccsansan/ai/removeDownloadListener$getDownloadingList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsansan/ai/removeDownloadListener$getDownloadingList;

    return-object p0
.end method

.method public static values()[Lccsansan/ai/removeDownloadListener$getDownloadingList;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/ai/removeDownloadListener$getDownloadingList;->$VALUES:[Lccsansan/ai/removeDownloadListener$getDownloadingList;

    invoke-virtual {v0}, [Lccsansan/ai/removeDownloadListener$getDownloadingList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsansan/ai/removeDownloadListener$getDownloadingList;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/ai/removeDownloadListener$getDownloadingList;->mValue:I

    return v0
.end method
