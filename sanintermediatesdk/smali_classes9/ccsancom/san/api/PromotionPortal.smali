.class public final enum Lccsancom/san/api/PromotionPortal;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lccsancom/san/api/PromotionPortal;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lccsancom/san/api/PromotionPortal;

.field public static final enum INCENTIVE:Lccsancom/san/api/PromotionPortal;

.field public static final enum INIT:Lccsancom/san/api/PromotionPortal;

.field public static final enum PUBLISHER:Lccsancom/san/api/PromotionPortal;

.field private static addDownloadListener:I

.field private static getDownloadingList:J

.field private static unifiedDownload:I


# instance fields
.field private mPortal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x0

    sput v0, Lccsancom/san/api/PromotionPortal;->addDownloadListener:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/api/PromotionPortal;->unifiedDownload:I

    invoke-static {}, Lccsancom/san/api/PromotionPortal;->removeDownloadListener()V

    .line 1
    new-instance v2, Lccsancom/san/api/PromotionPortal;

    const v3, 0x8d22

    const/16 v4, 0x30

    const-string v5, ""

    invoke-static {v5, v4, v0, v0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v4

    sub-int/2addr v3, v4

    const-string v4, "\ube70\u3344\ua42e\u1935\u8ae6\u7fc2\uf0b8\u6582\ud744\u4848\u3d2f\uaeed\u23f8\u94ad\u0987\ufb7d\u6c47\ue131\u5219\uc7f6"

    invoke-static {v4, v3}, Lccsancom/san/api/PromotionPortal;->addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    const-string v4, "INIT"

    invoke-direct {v2, v4, v0, v3}, Lccsancom/san/api/PromotionPortal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lccsancom/san/api/PromotionPortal;->INIT:Lccsancom/san/api/PromotionPortal;

    new-instance v3, Lccsancom/san/api/PromotionPortal;

    const-string v4, "INCENTIVE"

    const-string v5, "incentive"

    invoke-direct {v3, v4, v1, v5}, Lccsancom/san/api/PromotionPortal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lccsancom/san/api/PromotionPortal;->INCENTIVE:Lccsancom/san/api/PromotionPortal;

    new-instance v4, Lccsancom/san/api/PromotionPortal;

    const-string v5, "PUBLISHER"

    const/4 v6, 0x2

    const-string v7, "publisher"

    invoke-direct {v4, v5, v6, v7}, Lccsancom/san/api/PromotionPortal;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lccsancom/san/api/PromotionPortal;->PUBLISHER:Lccsancom/san/api/PromotionPortal;

    const/4 v5, 0x3

    .line 2
    new-array v5, v5, [Lccsancom/san/api/PromotionPortal;

    aput-object v2, v5, v0

    aput-object v3, v5, v1

    aput-object v4, v5, v6

    sput-object v5, Lccsancom/san/api/PromotionPortal;->$VALUES:[Lccsancom/san/api/PromotionPortal;

    sget v0, Lccsancom/san/api/PromotionPortal;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/api/PromotionPortal;->unifiedDownload:I

    rem-int/2addr v0, v6

    if-nez v0, :cond_0

    const/16 v0, 0x5e

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lccsancom/san/api/PromotionPortal;->mPortal:Ljava/lang/String;

    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1077
    sget-object v0, Lccsansan/d/deleteDownList;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_0
    sput p1, Lccsansan/d/deleteDownList;->unifiedDownload:I

    .line 1083
    array-length p1, p0

    new-array p1, p1, [C

    .line 1084
    const/4 v1, 0x0

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    :goto_0
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1086
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v2, Lccsansan/d/deleteDownList;->getDownloadingList:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v4, Lccsansan/d/deleteDownList;->unifiedDownload:I

    mul-int v3, v3, v4

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lccsancom/san/api/PromotionPortal;->getDownloadingList:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    .line 1084
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    goto :goto_0

    .line 1090
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1091
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static removeDownloadListener()V
    .locals 2

    const-wide v0, -0x1390190dd7c841fdL    # -2.1479622736136199E214

    sput-wide v0, Lccsancom/san/api/PromotionPortal;->getDownloadingList:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lccsancom/san/api/PromotionPortal;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .line 1
    const-class v0, Lccsancom/san/api/PromotionPortal;

    .end local p0    # "name":Ljava/lang/String;
    sget v1, Lccsancom/san/api/PromotionPortal;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/api/PromotionPortal;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x59

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lccsancom/san/api/PromotionPortal;

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x59
        :pswitch_0
    .end packed-switch
.end method

.method public static values()[Lccsancom/san/api/PromotionPortal;
    .locals 3

    .line 1
    sget v0, Lccsancom/san/api/PromotionPortal;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/api/PromotionPortal;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    sget-object v0, Lccsancom/san/api/PromotionPortal;->$VALUES:[Lccsancom/san/api/PromotionPortal;

    invoke-virtual {v0}, [Lccsancom/san/api/PromotionPortal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/san/api/PromotionPortal;

    sget v1, Lccsancom/san/api/PromotionPortal;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/api/PromotionPortal;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 6

    .line 1
    sget v0, Lccsancom/san/api/PromotionPortal;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/api/PromotionPortal;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsancom/san/api/PromotionPortal;->mPortal:Ljava/lang/String;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsancom/san/api/PromotionPortal;->mPortal:Ljava/lang/String;

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    sget v4, Lccsancom/san/api/PromotionPortal;->unifiedDownload:I

    add-int/lit8 v4, v4, 0x41

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/api/PromotionPortal;->addDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    :cond_1
    packed-switch v1, :pswitch_data_1

    return-object v0

    :pswitch_1
    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
