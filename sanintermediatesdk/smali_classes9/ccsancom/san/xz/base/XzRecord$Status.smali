.class public final enum Lccsancom/san/xz/base/XzRecord$Status;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/xz/base/XzRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/san/xz/base/XzRecord$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/san/xz/base/XzRecord$Status;

.field public static final enum AUTO_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

.field public static final enum COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

.field public static final enum ERROR:Lccsancom/san/xz/base/XzRecord$Status;

.field public static final enum MOBILE_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

.field public static final enum NORMAL:Lccsancom/san/xz/base/XzRecord$Status;

.field public static final enum NO_ENOUGH_STORAGE:Lccsancom/san/xz/base/XzRecord$Status;

.field public static final enum PROCESSING:Lccsancom/san/xz/base/XzRecord$Status;

.field public static final enum USER_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

.field public static final enum WAITING:Lccsancom/san/xz/base/XzRecord$Status;

.field private static addDownloadListener:I

.field private static mValues:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/san/xz/base/XzRecord$Status;",
            ">;"
        }
    .end annotation
.end field

.field private static unifiedDownload:I


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const/4 v0, 0x0

    sput v0, Lccsancom/san/xz/base/XzRecord$Status;->addDownloadListener:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/xz/base/XzRecord$Status;->unifiedDownload:I

    new-instance v2, Lccsancom/san/xz/base/XzRecord$Status;

    const-string v3, "NORMAL"

    const/4 v4, -0x1

    invoke-direct {v2, v3, v0, v4}, Lccsancom/san/xz/base/XzRecord$Status;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lccsancom/san/xz/base/XzRecord$Status;->NORMAL:Lccsancom/san/xz/base/XzRecord$Status;

    new-instance v3, Lccsancom/san/xz/base/XzRecord$Status;

    const-string v5, "WAITING"

    invoke-direct {v3, v5, v1, v0}, Lccsancom/san/xz/base/XzRecord$Status;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lccsancom/san/xz/base/XzRecord$Status;->WAITING:Lccsancom/san/xz/base/XzRecord$Status;

    new-instance v5, Lccsancom/san/xz/base/XzRecord$Status;

    const-string v6, "USER_PAUSE"

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7, v1}, Lccsancom/san/xz/base/XzRecord$Status;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lccsancom/san/xz/base/XzRecord$Status;->USER_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    new-instance v6, Lccsancom/san/xz/base/XzRecord$Status;

    const-string v8, "PROCESSING"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v7}, Lccsancom/san/xz/base/XzRecord$Status;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lccsancom/san/xz/base/XzRecord$Status;->PROCESSING:Lccsancom/san/xz/base/XzRecord$Status;

    new-instance v8, Lccsancom/san/xz/base/XzRecord$Status;

    const-string v10, "ERROR"

    const/4 v11, 0x4

    invoke-direct {v8, v10, v11, v9}, Lccsancom/san/xz/base/XzRecord$Status;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lccsancom/san/xz/base/XzRecord$Status;->ERROR:Lccsancom/san/xz/base/XzRecord$Status;

    new-instance v10, Lccsancom/san/xz/base/XzRecord$Status;

    const-string v12, "COMPLETED"

    const/4 v13, 0x5

    invoke-direct {v10, v12, v13, v11}, Lccsancom/san/xz/base/XzRecord$Status;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lccsancom/san/xz/base/XzRecord$Status;->COMPLETED:Lccsancom/san/xz/base/XzRecord$Status;

    new-instance v12, Lccsancom/san/xz/base/XzRecord$Status;

    const-string v14, "AUTO_PAUSE"

    const/4 v15, 0x6

    invoke-direct {v12, v14, v15, v13}, Lccsancom/san/xz/base/XzRecord$Status;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lccsancom/san/xz/base/XzRecord$Status;->AUTO_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    new-instance v14, Lccsancom/san/xz/base/XzRecord$Status;

    const-string v4, "MOBILE_PAUSE"

    const/4 v13, 0x7

    invoke-direct {v14, v4, v13, v15}, Lccsancom/san/xz/base/XzRecord$Status;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lccsancom/san/xz/base/XzRecord$Status;->MOBILE_PAUSE:Lccsancom/san/xz/base/XzRecord$Status;

    new-instance v4, Lccsancom/san/xz/base/XzRecord$Status;

    const-string v15, "NO_ENOUGH_STORAGE"

    const/16 v11, 0x8

    invoke-direct {v4, v15, v11, v13}, Lccsancom/san/xz/base/XzRecord$Status;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lccsancom/san/xz/base/XzRecord$Status;->NO_ENOUGH_STORAGE:Lccsancom/san/xz/base/XzRecord$Status;

    const/16 v15, 0x9

    .line 2
    new-array v15, v15, [Lccsancom/san/xz/base/XzRecord$Status;

    aput-object v2, v15, v0

    aput-object v3, v15, v1

    aput-object v5, v15, v7

    aput-object v6, v15, v9

    const/4 v2, 0x4

    aput-object v8, v15, v2

    const/4 v3, 0x5

    aput-object v10, v15, v3

    const/4 v3, 0x6

    aput-object v12, v15, v3

    aput-object v14, v15, v13

    aput-object v4, v15, v11

    sput-object v15, Lccsancom/san/xz/base/XzRecord$Status;->$VALUES:[Lccsancom/san/xz/base/XzRecord$Status;

    .line 11
    new-instance v3, Lccsanandroid/util/SparseArray;

    invoke-direct {v3}, Lccsanandroid/util/SparseArray;-><init>()V

    sput-object v3, Lccsancom/san/xz/base/XzRecord$Status;->mValues:Lccsanandroid/util/SparseArray;

    .line 14
    invoke-static {}, Lccsancom/san/xz/base/XzRecord$Status;->values()[Lccsancom/san/xz/base/XzRecord$Status;

    move-result-object v3

    array-length v4, v3

    .line 15
    sget v5, Lccsancom/san/xz/base/XzRecord$Status;->unifiedDownload:I

    and-int/lit8 v6, v5, 0x4d

    xor-int/lit8 v5, v5, 0x4d

    or-int/2addr v5, v6

    neg-int v5, v5

    neg-int v5, v5

    and-int v8, v6, v5

    or-int/2addr v5, v6

    add-int/2addr v8, v5

    rem-int/lit16 v5, v8, 0x80

    sput v5, Lccsancom/san/xz/base/XzRecord$Status;->addDownloadListener:I

    rem-int/2addr v8, v7

    if-eqz v8, :cond_0

    :cond_0
    const/4 v5, 0x0

    .line 14
    :cond_1
    :goto_0
    if-ge v5, v4, :cond_2

    .line 15
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    :goto_1
    packed-switch v6, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget v6, Lccsancom/san/xz/base/XzRecord$Status;->addDownloadListener:I

    and-int/lit8 v8, v6, 0x3f

    xor-int/lit8 v9, v8, -0x1

    or-int/lit8 v6, v6, 0x3f

    and-int/2addr v6, v9

    shl-int/2addr v8, v1

    add-int/2addr v6, v8

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lccsancom/san/xz/base/XzRecord$Status;->unifiedDownload:I

    rem-int/2addr v6, v7

    if-nez v6, :cond_3

    .line 14
    :cond_3
    aget-object v6, v3, v5

    .line 15
    sget-object v8, Lccsancom/san/xz/base/XzRecord$Status;->mValues:Lccsanandroid/util/SparseArray;

    iget v9, v6, Lccsancom/san/xz/base/XzRecord$Status;->mValue:I

    invoke-virtual {v8, v9, v6}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    or-int/lit8 v6, v5, -0x3f

    shl-int/2addr v6, v1

    and-int/lit8 v8, v5, 0x3e

    xor-int/lit8 v5, v5, -0x1

    and-int/lit8 v5, v5, -0x3f

    or-int/2addr v5, v8

    neg-int v5, v5

    const/4 v8, -0x1

    xor-int/2addr v5, v8

    sub-int/2addr v6, v5

    sub-int/2addr v6, v1

    and-int/lit8 v5, v6, 0x40

    xor-int/lit8 v6, v6, 0x40

    or-int/2addr v6, v5

    xor-int v8, v5, v6

    and-int/2addr v5, v6

    shl-int/2addr v5, v1

    add-int/2addr v5, v8

    sget v6, Lccsancom/san/xz/base/XzRecord$Status;->addDownloadListener:I

    and-int/lit8 v8, v6, -0x6

    xor-int/lit8 v9, v6, -0x1

    const/4 v10, 0x5

    and-int/2addr v9, v10

    or-int/2addr v8, v9

    and-int/2addr v6, v10

    shl-int/2addr v6, v1

    const/4 v9, -0x1

    xor-int/2addr v6, v9

    sub-int/2addr v8, v6

    sub-int/2addr v8, v1

    rem-int/lit16 v6, v8, 0x80

    sput v6, Lccsancom/san/xz/base/XzRecord$Status;->unifiedDownload:I

    rem-int/2addr v8, v7

    if-nez v8, :cond_1

    goto :goto_0

    :goto_2
    sget v0, Lccsancom/san/xz/base/XzRecord$Status;->addDownloadListener:I

    add-int/lit8 v0, v0, 0xe

    sub-int/2addr v0, v1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord$Status;->unifiedDownload:I

    rem-int/2addr v0, v7

    if-nez v0, :cond_4

    const/16 v11, 0xc

    goto :goto_3

    :cond_4
    const/4 v11, 0x4

    :goto_3
    packed-switch v11, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    return-void

    :goto_4
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch
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
    iput p3, p0, Lccsancom/san/xz/base/XzRecord$Status;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lccsancom/san/xz/base/XzRecord$Status;
    .locals 3
    .param p0, "value"    # I

    .line 1
    .end local p0    # "value":I
    sget v0, Lccsancom/san/xz/base/XzRecord$Status;->unifiedDownload:I

    and-int/lit8 v1, v0, -0x36

    xor-int/lit8 v2, v0, -0x1

    and-int/lit8 v2, v2, 0x35

    or-int/2addr v1, v2

    and-int/lit8 v0, v0, 0x35

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord$Status;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v0, 0x61

    goto :goto_0

    :cond_0
    const/16 v0, 0x5c

    :goto_0
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lccsancom/san/xz/base/XzRecord$Status;->mValues:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0, p0}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsancom/san/xz/base/XzRecord$Status;

    goto :goto_1

    :pswitch_0
    sget-object v0, Lccsancom/san/xz/base/XzRecord$Status;->mValues:Lccsanandroid/util/SparseArray;

    invoke-virtual {v0, p0}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsancom/san/xz/base/XzRecord$Status;

    goto :goto_2

    :goto_1
    const/16 v0, 0x27

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/san/xz/base/XzRecord$Status;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 1
    const-class v0, Lccsancom/san/xz/base/XzRecord$Status;

    .end local p0    # "name":Ljava/lang/String;
    sget v1, Lccsancom/san/xz/base/XzRecord$Status;->unifiedDownload:I

    and-int/lit8 v2, v1, 0x3f

    xor-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    or-int v3, v2, v1

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    xor-int/2addr v1, v2

    sub-int/2addr v3, v1

    rem-int/lit16 v1, v3, 0x80

    sput v1, Lccsancom/san/xz/base/XzRecord$Status;->addDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x0

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/san/xz/base/XzRecord$Status;

    packed-switch v2, :pswitch_data_0

    :try_start_0
    array-length v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    sget v0, Lccsancom/san/xz/base/XzRecord$Status;->addDownloadListener:I

    xor-int/lit8 v2, v0, 0x79

    and-int/lit8 v5, v0, 0x79

    or-int/2addr v2, v5

    shl-int/2addr v2, v4

    and-int/lit8 v5, v0, -0x7a

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x79

    or-int/2addr v0, v5

    neg-int v0, v0

    or-int v5, v2, v0

    shl-int/2addr v5, v4

    xor-int/2addr v0, v2

    sub-int/2addr v5, v0

    rem-int/lit16 v0, v5, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord$Status;->unifiedDownload:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    const/4 v4, 0x0

    :cond_1
    packed-switch v4, :pswitch_data_1

    return-object p0

    :pswitch_1
    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static values()[Lccsancom/san/xz/base/XzRecord$Status;
    .locals 6

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord$Status;->unifiedDownload:I

    xor-int/lit8 v1, v0, 0x53

    and-int/lit8 v2, v0, 0x53

    or-int/2addr v1, v2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    and-int/lit8 v3, v0, -0x54

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x53

    or-int/2addr v0, v3

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v1, v0

    sub-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord$Status;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v0, 0x47

    goto :goto_0

    :cond_0
    const/16 v0, 0x58

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lccsancom/san/xz/base/XzRecord$Status;->$VALUES:[Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v0}, [Lccsancom/san/xz/base/XzRecord$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/san/xz/base/XzRecord$Status;

    goto :goto_1

    :pswitch_0
    sget-object v0, Lccsancom/san/xz/base/XzRecord$Status;->$VALUES:[Lccsancom/san/xz/base/XzRecord$Status;

    invoke-virtual {v0}, [Lccsancom/san/xz/base/XzRecord$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/san/xz/base/XzRecord$Status;

    goto :goto_2

    :goto_1
    :try_start_0
    array-length v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    sget v3, Lccsancom/san/xz/base/XzRecord$Status;->unifiedDownload:I

    and-int/lit8 v4, v3, -0x50

    xor-int/lit8 v5, v3, -0x1

    and-int/lit8 v5, v5, 0x4f

    or-int/2addr v4, v5

    and-int/lit8 v3, v3, 0x4f

    shl-int/2addr v3, v2

    and-int v5, v4, v3

    or-int/2addr v3, v4

    add-int/2addr v5, v3

    rem-int/lit16 v3, v5, 0x80

    sput v3, Lccsancom/san/xz/base/XzRecord$Status;->addDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_1

    const/4 v2, 0x0

    :cond_1
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object v0

    :goto_3
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x58
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public toInt()I
    .locals 4

    .line 1
    sget v0, Lccsancom/san/xz/base/XzRecord$Status;->unifiedDownload:I

    and-int/lit8 v1, v0, 0x71

    or-int/lit8 v0, v0, 0x71

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord$Status;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    :goto_0
    packed-switch v1, :pswitch_data_0

    iget v1, p0, Lccsancom/san/xz/base/XzRecord$Status;->mValue:I

    goto :goto_1

    :pswitch_0
    iget v1, p0, Lccsancom/san/xz/base/XzRecord$Status;->mValue:I

    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    xor-int/lit8 v2, v0, 0x25

    and-int/lit8 v3, v0, 0x25

    or-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x1

    xor-int/lit8 v3, v3, -0x1

    or-int/lit8 v0, v0, 0x25

    and-int/2addr v0, v3

    neg-int v0, v0

    and-int v3, v2, v0

    or-int/2addr v0, v2

    add-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/xz/base/XzRecord$Status;->unifiedDownload:I

    rem-int/lit8 v3, v3, 0x2

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method
