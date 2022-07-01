.class public final enum Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/xz/base/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "addDownloadListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

.field public static final enum ERROR:Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

.field private static IncentiveDownloadUtils:I = 0x0

.field public static final enum LOADED:Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

.field public static final enum LOADING:Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

.field public static final TAG:Ljava/lang/String; = "LoadStatus"

.field public static final enum UNLOAD:Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

.field private static getDownloadingList:I

.field private static mStringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mValues:Lccsanandroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroid/util/SparseArray<",
            "Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;",
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
    const/4 v0, 0x0

    sput v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    new-instance v2, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    const-string v3, "UNLOAD"

    invoke-direct {v2, v3, v0, v0}, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->UNLOAD:Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    new-instance v3, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    const-string v4, "LOADING"

    invoke-direct {v3, v4, v1, v1}, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->LOADING:Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    new-instance v4, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    const-string v5, "LOADED"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v6}, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->LOADED:Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    new-instance v5, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    const-string v7, "ERROR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->ERROR:Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    const/4 v7, 0x4

    .line 2
    new-array v7, v7, [Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    aput-object v2, v7, v0

    aput-object v3, v7, v1

    aput-object v4, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->$VALUES:[Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    .line 12
    new-instance v2, Lccsanandroid/util/SparseArray;

    invoke-direct {v2}, Lccsanandroid/util/SparseArray;-><init>()V

    sput-object v2, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->mValues:Lccsanandroid/util/SparseArray;

    .line 13
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->mStringMap:Ljava/util/Map;

    .line 16
    invoke-static {}, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->values()[Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    move-result-object v2

    array-length v3, v2

    .line 17
    sget v4, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    or-int/lit8 v5, v4, 0x55

    shl-int/2addr v5, v1

    xor-int/lit8 v4, v4, 0x55

    sub-int/2addr v5, v4

    rem-int/lit16 v4, v5, 0x80

    sput v4, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/2addr v5, v6

    if-nez v5, :cond_0

    const/16 v4, 0x4c

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 22
    :pswitch_0
    nop

    .line 16
    :goto_1
    const/4 v4, 0x0

    :goto_2
    const/16 v5, 0x27

    if-ge v4, v3, :cond_1

    .line 17
    const/16 v7, 0x27

    goto :goto_3

    :cond_1
    const/16 v7, 0x4e

    :goto_3
    packed-switch v7, :pswitch_data_1

    .line 22
    sget v7, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    add-int/2addr v7, v5

    rem-int/lit16 v5, v7, 0x80

    sput v5, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/2addr v7, v6

    if-nez v7, :cond_2

    goto :goto_4

    .line 19
    :pswitch_1
    sget-object v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->mStringMap:Ljava/util/Map;

    sget-object v2, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->UNLOAD:Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    const-string v3, "unload"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->mStringMap:Ljava/util/Map;

    sget-object v2, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->LOADING:Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    const-string v3, "loading"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->mStringMap:Ljava/util/Map;

    sget-object v2, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->LOADED:Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    const-string v3, "loaded"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->mStringMap:Ljava/util/Map;

    sget-object v2, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->ERROR:Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    const-string v3, "error"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    or-int/lit8 v2, v0, 0x45

    shl-int/lit8 v3, v2, 0x1

    and-int/lit8 v0, v0, 0x45

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v2

    neg-int v0, v0

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/2addr v3, v6

    .line 22
    return-void

    .line 17
    :goto_4
    const/4 v5, 0x0

    goto :goto_5

    :cond_2
    const/4 v5, 0x1

    :goto_5
    packed-switch v5, :pswitch_data_2

    .line 22
    aget-object v5, v2, v4

    .line 17
    sget-object v7, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->mValues:Lccsanandroid/util/SparseArray;

    iget v8, v5, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->mValue:I

    invoke-virtual {v7, v8, v5}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x3

    goto :goto_6

    .line 16
    :pswitch_2
    aget-object v5, v2, v4

    .line 17
    sget-object v7, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->mValues:Lccsanandroid/util/SparseArray;

    iget v8, v5, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->mValue:I

    invoke-virtual {v7, v8, v5}, Lccsanandroid/util/SparseArray;->put(ILjava/lang/Object;)V

    xor-int/lit8 v5, v4, 0x1

    and-int/lit8 v4, v4, 0x1

    shl-int/2addr v4, v1

    add-int/2addr v5, v4

    move v4, v5

    .line 22
    :goto_6
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4e
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
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
    iput p3, p0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;
    .locals 4
    .param p0, "value"    # I

    .line 1
    .end local p0    # "value":I
    sget v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x65

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    sget-object v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->mValues:Lccsanandroid/util/SparseArray;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lccsanandroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    sget v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x51

    sub-int/2addr v0, v1

    or-int/lit8 v3, v0, -0x1

    shl-int/2addr v3, v1

    xor-int/lit8 v0, v0, -0x1

    sub-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return-object p0

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1
    .end local p0    # "name":Ljava/lang/String;
    sget v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    and-int/lit8 v1, v0, -0xe

    xor-int/lit8 v2, v0, -0x1

    and-int/lit8 v2, v2, 0xd

    or-int/2addr v1, v2

    and-int/lit8 v0, v0, 0xd

    shl-int/lit8 v0, v0, 0x1

    and-int v2, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    :cond_0
    const-class v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    sget v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    or-int/lit8 v1, v0, 0xb

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit8 v0, v0, 0xb

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/16 v0, 0x25

    goto :goto_0

    :cond_1
    const/16 v0, 0x4a

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x4a
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    xor-int/lit8 v1, v0, 0x45

    and-int/lit8 v0, v0, 0x45

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    sget-object v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->$VALUES:[Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    invoke-virtual {v0}, [Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    sget v1, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    and-int/lit8 v2, v1, 0x51

    or-int/lit8 v1, v1, 0x51

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const/16 v1, 0x46

    goto :goto_0

    :cond_1
    const/16 v1, 0x4a

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public toInt()I
    .locals 2

    .line 1
    sget v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x43

    add-int/lit8 v0, v0, -0x1

    xor-int/lit8 v1, v0, -0x1

    and-int/lit8 v0, v0, -0x1

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v0, 0x45

    goto :goto_0

    :cond_0
    const/16 v0, 0x42

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->mValue:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->mValue:I

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    and-int/lit8 v1, v0, 0x4d

    or-int/lit8 v0, v0, 0x4d

    and-int v2, v1, v0

    or-int/2addr v0, v1

    add-int/2addr v2, v0

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    :cond_0
    sget-object v0, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->mStringMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget v1, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->getDownloadingList:I

    or-int/lit8 v2, v1, 0x7

    shl-int/lit8 v2, v2, 0x1

    const/4 v3, 0x7

    xor-int/2addr v1, v3

    sub-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x25

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch
.end method
