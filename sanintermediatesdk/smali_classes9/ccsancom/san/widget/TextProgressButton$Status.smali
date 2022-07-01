.class public final enum Lccsancom/san/widget/TextProgressButton$Status;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/widget/TextProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/san/widget/TextProgressButton$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/san/widget/TextProgressButton$Status;

.field public static final enum AUTO_PAUSE:Lccsancom/san/widget/TextProgressButton$Status;

.field public static final enum AZED:Lccsancom/san/widget/TextProgressButton$Status;

.field public static final enum COMPLETED:Lccsancom/san/widget/TextProgressButton$Status;

.field public static final enum ERROR:Lccsancom/san/widget/TextProgressButton$Status;

.field public static final enum MOBILE_PAUSE:Lccsancom/san/widget/TextProgressButton$Status;

.field public static final enum NORMAL:Lccsancom/san/widget/TextProgressButton$Status;

.field public static final enum NO_ENOUGH_STORAGE:Lccsancom/san/widget/TextProgressButton$Status;

.field public static final enum PROCESSING:Lccsancom/san/widget/TextProgressButton$Status;

.field public static final enum UPDATE:Lccsancom/san/widget/TextProgressButton$Status;

.field public static final enum USER_PAUSE:Lccsancom/san/widget/TextProgressButton$Status;

.field public static final enum WAITING:Lccsancom/san/widget/TextProgressButton$Status;

.field private static mValues:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/san/widget/TextProgressButton$Status;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mValue:I

.field private strValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lccsancom/san/widget/TextProgressButton$Status;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-string v4, "DOWNLOAD"

    invoke-direct {v0, v1, v2, v3, v4}, Lccsancom/san/widget/TextProgressButton$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lccsancom/san/widget/TextProgressButton$Status;->NORMAL:Lccsancom/san/widget/TextProgressButton$Status;

    .line 2
    new-instance v1, Lccsancom/san/widget/TextProgressButton$Status;

    const-string v3, "WAITING"

    const/4 v5, 0x1

    invoke-direct {v1, v3, v5, v2, v4}, Lccsancom/san/widget/TextProgressButton$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v1, Lccsancom/san/widget/TextProgressButton$Status;->WAITING:Lccsancom/san/widget/TextProgressButton$Status;

    .line 3
    new-instance v3, Lccsancom/san/widget/TextProgressButton$Status;

    const-string v6, "USER_PAUSE"

    const/4 v7, 0x2

    const-string v8, "CONTINUE"

    invoke-direct {v3, v6, v7, v5, v8}, Lccsancom/san/widget/TextProgressButton$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v3, Lccsancom/san/widget/TextProgressButton$Status;->USER_PAUSE:Lccsancom/san/widget/TextProgressButton$Status;

    .line 4
    new-instance v6, Lccsancom/san/widget/TextProgressButton$Status;

    const-string v9, "PROCESSING"

    const/4 v10, 0x3

    invoke-direct {v6, v9, v10, v7, v4}, Lccsancom/san/widget/TextProgressButton$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v6, Lccsancom/san/widget/TextProgressButton$Status;->PROCESSING:Lccsancom/san/widget/TextProgressButton$Status;

    .line 5
    new-instance v4, Lccsancom/san/widget/TextProgressButton$Status;

    const-string v9, "ERROR"

    const/4 v11, 0x4

    invoke-direct {v4, v9, v11, v10, v8}, Lccsancom/san/widget/TextProgressButton$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v4, Lccsancom/san/widget/TextProgressButton$Status;->ERROR:Lccsancom/san/widget/TextProgressButton$Status;

    .line 6
    new-instance v9, Lccsancom/san/widget/TextProgressButton$Status;

    const-string v12, "COMPLETED"

    const/4 v13, 0x5

    const-string v14, "AZ"

    invoke-direct {v9, v12, v13, v11, v14}, Lccsancom/san/widget/TextProgressButton$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v9, Lccsancom/san/widget/TextProgressButton$Status;->COMPLETED:Lccsancom/san/widget/TextProgressButton$Status;

    .line 7
    new-instance v12, Lccsancom/san/widget/TextProgressButton$Status;

    const-string v14, "AUTO_PAUSE"

    const/4 v15, 0x6

    invoke-direct {v12, v14, v15, v13, v8}, Lccsancom/san/widget/TextProgressButton$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v12, Lccsancom/san/widget/TextProgressButton$Status;->AUTO_PAUSE:Lccsancom/san/widget/TextProgressButton$Status;

    .line 8
    new-instance v14, Lccsancom/san/widget/TextProgressButton$Status;

    const-string v13, "MOBILE_PAUSE"

    const/4 v11, 0x7

    invoke-direct {v14, v13, v11, v15, v8}, Lccsancom/san/widget/TextProgressButton$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v14, Lccsancom/san/widget/TextProgressButton$Status;->MOBILE_PAUSE:Lccsancom/san/widget/TextProgressButton$Status;

    .line 9
    new-instance v13, Lccsancom/san/widget/TextProgressButton$Status;

    const-string v15, "NO_ENOUGH_STORAGE"

    const/16 v10, 0x8

    invoke-direct {v13, v15, v10, v11, v8}, Lccsancom/san/widget/TextProgressButton$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v13, Lccsancom/san/widget/TextProgressButton$Status;->NO_ENOUGH_STORAGE:Lccsancom/san/widget/TextProgressButton$Status;

    .line 10
    new-instance v8, Lccsancom/san/widget/TextProgressButton$Status;

    const-string v15, "AZED"

    const/16 v11, 0x9

    const-string v7, "OPEN"

    invoke-direct {v8, v15, v11, v10, v7}, Lccsancom/san/widget/TextProgressButton$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v8, Lccsancom/san/widget/TextProgressButton$Status;->AZED:Lccsancom/san/widget/TextProgressButton$Status;

    .line 11
    new-instance v7, Lccsancom/san/widget/TextProgressButton$Status;

    const-string v15, "UPDATE"

    const/16 v10, 0xa

    invoke-direct {v7, v15, v10, v11, v15}, Lccsancom/san/widget/TextProgressButton$Status;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v7, Lccsancom/san/widget/TextProgressButton$Status;->UPDATE:Lccsancom/san/widget/TextProgressButton$Status;

    .line 12
    const/16 v15, 0xb

    new-array v15, v15, [Lccsancom/san/widget/TextProgressButton$Status;

    aput-object v0, v15, v2

    aput-object v1, v15, v5

    const/4 v0, 0x2

    aput-object v3, v15, v0

    const/4 v0, 0x3

    aput-object v6, v15, v0

    const/4 v0, 0x4

    aput-object v4, v15, v0

    const/4 v0, 0x5

    aput-object v9, v15, v0

    const/4 v0, 0x6

    aput-object v12, v15, v0

    const/4 v0, 0x7

    aput-object v14, v15, v0

    const/16 v0, 0x8

    aput-object v13, v15, v0

    aput-object v8, v15, v11

    aput-object v7, v15, v10

    sput-object v15, Lccsancom/san/widget/TextProgressButton$Status;->$VALUES:[Lccsancom/san/widget/TextProgressButton$Status;

    .line 33
    new-instance v0, Lccsanandroid/util/SparseArray;

    invoke-direct {v0}, Lccsanandroid/util/SparseArray;-><init>()V

    sput-object v0, Lccsancom/san/widget/TextProgressButton$Status;->mValues:Lccsanandroid/util/SparseArray;

    .line 36
    invoke-static {}, Lccsancom/san/widget/TextProgressButton$Status;->values()[Lccsancom/san/widget/TextProgressButton$Status;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 37
    sget-object v4, Lccsancom/san/widget/TextProgressButton$Status;->mValues:Lccsanandroid/util/SparseArray;

    iget v5, v3, Lccsancom/san/widget/TextProgressButton$Status;->mValue:I

    invoke-virtual {v4, v5, v3}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lccsancom/san/widget/TextProgressButton$Status;->mValue:I

    .line 3
    iput-object p4, p0, Lccsancom/san/widget/TextProgressButton$Status;->strValue:Ljava/lang/String;

    return-void
.end method

.method public static fromInt(I)Lccsancom/san/widget/TextProgressButton$Status;
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/widget/TextProgressButton$Status;->mValues:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0, p0}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsancom/san/widget/TextProgressButton$Status;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/san/widget/TextProgressButton$Status;
    .locals 1

    .line 1
    const-class v0, Lccsancom/san/widget/TextProgressButton$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/san/widget/TextProgressButton$Status;

    return-object p0
.end method

.method public static values()[Lccsancom/san/widget/TextProgressButton$Status;
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/widget/TextProgressButton$Status;->$VALUES:[Lccsancom/san/widget/TextProgressButton$Status;

    invoke-virtual {v0}, [Lccsancom/san/widget/TextProgressButton$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/san/widget/TextProgressButton$Status;

    return-object v0
.end method


# virtual methods
.method public getResValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/widget/TextProgressButton$Status;->strValue:Ljava/lang/String;

    return-object v0
.end method

.method public toInt()I
    .locals 1

    .line 1
    iget v0, p0, Lccsancom/san/widget/TextProgressButton$Status;->mValue:I

    return v0
.end method
