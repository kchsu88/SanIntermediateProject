.class public Lccsansan/p/addDownloadListener;
.super Lccsanandroid/os/FileObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/p/addDownloadListener$getDownloadingList;,
        Lccsansan/p/addDownloadListener$getDownloadingRecordByUrl;
    }
.end annotation


# static fields
.field private static final IncentiveDownloadUtils:Ljava/lang/String;

.field public static final addDownloadListener:[B

.field private static deleteDownItem:J

.field private static getDownloadedCount:I

.field private static pause:I

.field public static final removeDownloadListener:I


# instance fields
.field private final getDownloadStatusByUrl:Lccsanandroid/content/Context;

.field private getDownloadedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private getDownloadedRecordByUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/p/addDownloadListener$getDownloadingList;",
            ">;"
        }
    .end annotation
.end field

.field private final getDownloadingList:Ljava/lang/String;

.field private getDownloadingRecordByUrl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingRecordByUrl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/p/addDownloadListener;->pause:I

    const/4 v0, 0x1

    sput v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    invoke-static {}, Lccsansan/p/addDownloadListener;->getDownloadingList()V

    invoke-static {}, Lccsansan/p/addDownloadListener;->addDownloadListener()V

    .line 1
    const-class v0, Lccsansan/p/addDownloadListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsansan/p/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    sget v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/16 v0, 0xfff

    invoke-direct {p0, p2, v0}, Lccsanandroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/p/addDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/p/addDownloadListener;->getDownloadedList:Ljava/util/List;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsansan/p/addDownloadListener;->getDownloadingRecordByUrl:Ljava/util/Map;

    .line 45
    iput-object p2, p0, Lccsansan/p/addDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lccsansan/p/addDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/p/addDownloadListener;)Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 v1, v0, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/p/addDownloadListener;->getDownloadingList:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(SSI)Ljava/lang/String;
    .locals 7

    sget v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 v1, v0, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v1, v1, 0x2

    sget-object v1, Lccsansan/p/addDownloadListener;->addDownloadListener:[B

    mul-int/lit8 p0, p0, 0x6

    rsub-int/lit8 p0, p0, 0x17

    mul-int/lit8 p1, p1, 0x6

    rsub-int/lit8 p1, p1, 0x67

    add-int/lit8 p2, p2, 0x4

    new-array v2, p0, [B

    add-int/lit8 p0, p0, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    packed-switch v5, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_2

    :pswitch_0
    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    move v0, p2

    const/4 v5, 0x0

    goto :goto_3

    :goto_2
    int-to-byte v5, p1

    aput-byte v5, v2, v0

    add-int/2addr p2, v3

    add-int/lit8 v5, v0, 0x1

    if-ne v0, p0, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_2
    aget-byte v0, v1, p2

    move v6, p2

    move p2, p1

    move p1, v0

    move v0, v6

    :goto_3
    neg-int p1, p1

    add-int/2addr p2, p1

    add-int/lit8 p1, p2, -0x8

    move p2, v0

    move v0, v5

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/p/addDownloadListener$getDownloadingList;
    .locals 10

    .line 13
    const-string v0, ".apk"

    .line 1
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lccsansan/p/addDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_8

    .line 13
    sget v3, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v3, v3, 0x79

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    .line 7
    const/4 v3, 0x6

    goto :goto_1

    :cond_1
    const/16 v3, 0x3f

    :goto_1
    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    .line 13
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    .line 1
    :pswitch_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/p/addDownloadListener$getDownloadingList;

    .line 2
    iget-object v5, v3, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    :goto_2
    goto :goto_4

    .line 13
    :goto_3
    check-cast v3, Lccsansan/p/addDownloadListener$getDownloadingList;

    .line 2
    iget-object v5, v3, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v6, 0x20

    :try_start_2
    div-int/2addr v6, v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v5, :cond_0

    goto :goto_2

    .line 3
    :goto_4
    :try_start_3
    iget-object v5, v3, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    .line 5
    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v7, "/"

    const/4 v8, 0x1

    if-eqz v6, :cond_6

    .line 2
    sget v6, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 v6, v6, 0x75

    rem-int/lit16 v9, v6, 0x80

    sput v9, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3

    .line 6
    :try_start_4
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_5

    :cond_2
    const/4 v5, 0x1

    :goto_5
    packed-switch v5, :pswitch_data_1

    goto :goto_0

    .line 5
    :cond_3
    nop

    .line 6
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v6, v8

    invoke-virtual {v5, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v5, :cond_4

    const/16 v5, 0x1d

    goto :goto_6

    :cond_4
    const/16 v5, 0x42

    :goto_6
    packed-switch v5, :pswitch_data_2

    .line 13
    :pswitch_2
    sget p1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    .line 7
    goto :goto_7

    :cond_5
    const/4 v4, 0x1

    :goto_7
    packed-switch v4, :pswitch_data_3

    return-object v3

    .line 13
    :pswitch_3
    :try_start_5
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-object v3

    :catchall_0
    move-exception p1

    throw p1

    .line 11
    :cond_6
    :try_start_6
    invoke-static {v5}, Lccsansan/bw/getActionType;->addDownloadListener(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 7
    goto :goto_8

    :cond_7
    const/4 v4, 0x1

    :goto_8
    packed-switch v4, :pswitch_data_4

    .line 12
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v8

    const-string v6, ".sapk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v4, :cond_0

    return-object v3

    :catchall_1
    move-exception p1

    throw p1

    :catch_0
    move-exception p1

    :cond_8
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)Lccsansan/p/addDownloadListener$getDownloadingList;
    .locals 5

    .line 46
    nop

    .line 36
    invoke-virtual {p2}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lccsansan/bw/getLoaderClassName;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/util/Pair;

    move-result-object p1

    .line 38
    iget-object v0, p1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 39
    sget-object p2, Lccsansan/p/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extract zip file error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 42
    :cond_0
    invoke-virtual {p2}, Lccsansan/da/removeDownloadListener;->addDownloadListener()[Lccsansan/da/removeDownloadListener;

    move-result-object p1

    .line 43
    array-length p2, p1

    const/4 v0, 0x0

    .line 46
    sget v2, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v2, v2, 0x3b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 43
    :cond_1
    :goto_0
    if-ge v0, p2, :cond_2

    .line 46
    const/16 v2, 0x4a

    goto :goto_1

    :cond_2
    const/16 v2, 0x24

    :goto_1
    packed-switch v2, :pswitch_data_0

    sget v2, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v2, v2, 0x6d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    goto :goto_2

    :pswitch_0
    return-object v1

    .line 43
    :cond_3
    :goto_2
    aget-object v2, p1, v0

    .line 44
    invoke-virtual {v2}, Lccsansan/da/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "split"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    .line 45
    :cond_4
    invoke-virtual {v2}, Lccsansan/da/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "base.apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 46
    const/16 v3, 0xf

    goto :goto_3

    :cond_5
    const/16 v3, 0x44

    :goto_3
    packed-switch v3, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    sget v1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    :cond_6
    invoke-virtual {v2}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsansan/p/addDownloadListener;->getDownloadedRecordByUrl(Ljava/lang/String;)Lccsansan/p/addDownloadListener$getDownloadingList;

    move-result-object v1

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/p/addDownloadListener;Ljava/lang/String;)Lccsansan/p/addDownloadListener$getDownloadingList;
    .locals 2

    .line 1
    sget v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x59

    goto :goto_0

    :cond_0
    const/16 v0, 0x25

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lccsansan/p/addDownloadListener;->getDownloadedRecordByUrl(Ljava/lang/String;)Lccsansan/p/addDownloadListener$getDownloadingList;

    move-result-object p0

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x60

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    sget p1, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    return-object p0

    :pswitch_1
    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Lccsansan/p/addDownloadListener$getDownloadingList;)V
    .locals 2

    .line 3
    sget v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/p/addDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/p/addDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    sget p1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/p/addDownloadListener;Lccsansan/p/addDownloadListener$getDownloadingList;)V
    .locals 2

    .line 6
    sget v0, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsansan/p/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/addDownloadListener$getDownloadingList;)V

    sget p0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private addDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    sget v0, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v0, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 1
    :cond_2
    :try_start_1
    const-string v0, "/"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    const-string v1, ".sapk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget v0, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x39

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1

    :catch_0
    move-exception p1

    :goto_1
    const-string p1, ""

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 4
    sget v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x37

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0, p1}, Lccsansan/p/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method static addDownloadListener()V
    .locals 2

    sget v0, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x2a

    packed-switch v0, :pswitch_data_0

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/p/addDownloadListener;->addDownloadListener:[B

    const/16 v0, 0x46

    goto :goto_1

    :pswitch_0
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lccsansan/p/addDownloadListener;->addDownloadListener:[B

    const/16 v0, 0x7d

    :goto_1
    sput v0, Lccsansan/p/addDownloadListener;->removeDownloadListener:I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x46t
        -0x61t
        0x5ct
        0x36t
        -0x15t
        0x2t
        -0x16t
        -0x5t
        -0x2t
        -0x3t
        0x2et
        -0x3dt
        -0x14t
        -0x7t
        -0xet
        0x7t
        -0x11t
        -0xet
        0x3et
        -0x1dt
        -0x34t
        -0x7t
        -0xet
        0x7t
        -0x1bt
        -0x4t
        -0x6t
        -0x17t
        0x1ct
        -0x19t
        -0xat
        -0x10t
        0x2t
        -0xet
        -0x6t
        0x10t
        -0x1ct
        -0x15t
        0x5t
        -0xet
        -0x6t
        -0x15t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x46t
        -0x61t
        0x5ct
        0x36t
        -0x15t
        0x2t
        -0x16t
        -0x5t
        -0x2t
        -0x3t
        0x2et
        -0x3dt
        -0x14t
        -0x7t
        -0xet
        0x7t
        -0x11t
        -0xet
        0x3et
        -0x1dt
        -0x34t
        -0x7t
        -0xet
        0x7t
        -0x1bt
        -0x4t
        -0x6t
        -0x17t
        0x1ct
        -0x19t
        -0xat
        -0x10t
        0x2t
        -0xet
        -0x6t
        0x10t
        -0x1ct
        -0x15t
        0x5t
        -0xet
        -0x6t
        -0x15t
    .end array-data
.end method

.method private declared-synchronized addDownloadListener(Lccsansan/p/addDownloadListener$getDownloadingList;Ljava/lang/String;)V
    .locals 9

    monitor-enter p0

    .line 57
    nop

    .line 47
    :try_start_0
    sget-object v0, Lccsansan/p/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\ue487\ubb2d\u5bd6\ufa6e\u9a0b\u3aa9\ud944\u79e0\u19aa\ub82c\u58dd\uff6d\u9f1d\u3fe2\ude0d\u7efc\u1e92\ubd26\u5dd9\ufc30\u9c4a\u3cf6"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    rsub-int v3, v3, 0x5fa1

    invoke-static {v2, v3}, Lccsansan/p/addDownloadListener;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p1, Lccsansan/p/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    const-string v1, "/"

    .line 49
    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lccsansan/p/addDownloadListener;->getDownloadingRecordByUrl:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const/16 v2, 0x3c

    goto :goto_0

    :cond_0
    const/16 v2, 0x4a

    :goto_0
    packed-switch v2, :pswitch_data_0

    :cond_1
    goto :goto_2

    :pswitch_0
    sget v2, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 v2, v2, 0x19

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v2, v2, 0x2

    const-wide/16 v3, 0x1388

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v2, p0, Lccsansan/p/addDownloadListener;->getDownloadingRecordByUrl:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_1

    goto :goto_1

    .line 51
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v2, p0, Lccsansan/p/addDownloadListener;->getDownloadingRecordByUrl:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sub-long/2addr v5, v7

    cmp-long v2, v5, v3

    if-gez v2, :cond_3

    :goto_1
    monitor-exit p0

    return-void

    .line 54
    :cond_3
    :goto_2
    :try_start_1
    iget-object v2, p0, Lccsansan/p/addDownloadListener;->getDownloadingRecordByUrl:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p2

    new-instance v2, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v2, p0, v1, v0, p1}, Lccsansan/p/addDownloadListener$IncentiveDownloadUtils;-><init>(Lccsansan/p/addDownloadListener;Ljava/lang/String;Ljava/lang/String;Lccsansan/p/addDownloadListener$getDownloadingList;)V

    invoke-virtual {p2, v2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 p1, p1, 0x2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    packed-switch p1, :pswitch_data_1

    monitor-exit p0

    return-void

    :pswitch_1
    const/4 p1, 0x0

    :try_start_2
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 46
    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Lccsansan/p/addDownloadListener;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsansan/p/addDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    sget p0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 p0, p0, 0x3b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private deleteDownItem(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    nop

    .line 1
    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1
    :cond_1
    :try_start_1
    const-string v0, "/"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    :goto_1
    const-string p1, ""

    sget v0, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/16 v0, 0x13

    goto :goto_2

    :cond_2
    const/16 v0, 0x4d

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object p1

    :goto_3
    const/4 v0, 0x0

    :try_start_2
    array-length v0, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4d
        :pswitch_1
    .end packed-switch
.end method

.method private getDownloadStatusByUrl(Ljava/lang/String;)V
    .locals 3

    .line 2
    sget v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 v1, v0, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    iget-object v1, p0, Lccsansan/p/addDownloadListener;->unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingRecordByUrl;

    if-eqz v1, :cond_1

    .line 2
    const/16 v2, 0x27

    goto :goto_0

    :cond_1
    const/16 v2, 0x14

    :goto_0
    packed-switch v2, :pswitch_data_0

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    :cond_2
    invoke-interface {v1, p1}, Lccsansan/p/addDownloadListener$getDownloadingRecordByUrl;->addDownloadListener(Ljava/lang/String;)V

    :pswitch_0
    return-void

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadedList(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/p/addDownloadListener$addDownloadListener;

    invoke-direct {v1, p0, p1}, Lccsansan/p/addDownloadListener$addDownloadListener;-><init>(Lccsansan/p/addDownloadListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadedRecordByUrl(Ljava/lang/String;)Lccsansan/p/addDownloadListener$getDownloadingList;
    .locals 9

    .line 12
    nop

    .line 1
    iget-object v0, p0, Lccsansan/p/addDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    if-nez v0, :cond_0

    .line 12
    const/16 v1, 0x49

    goto :goto_0

    :cond_0
    const/16 v1, 0x5c

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    .line 1
    goto :goto_2

    .line 12
    :pswitch_0
    sget p1, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 p1, p1, 0x71

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 v3, 0x0

    :cond_1
    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 1
    :pswitch_1
    return-object v4

    .line 12
    :goto_1
    const/16 p1, 0x42

    :try_start_0
    div-int/2addr p1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :catchall_0
    move-exception p1

    throw p1

    :goto_2
    sget v1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v5, v1, 0x80

    sput v5, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 1
    :cond_2
    int-to-byte v1, v2

    add-int/lit8 v5, v1, 0x1

    int-to-byte v5, v5

    neg-int v6, v5

    int-to-byte v6, v6

    :try_start_1
    invoke-static {v1, v5, v6}, Lccsansan/p/addDownloadListener;->IncentiveDownloadUtils(SSI)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sget-object v5, Lccsansan/p/addDownloadListener;->addDownloadListener:[B

    const/4 v6, 0x5

    aget-byte v6, v5, v6

    sub-int/2addr v6, v3

    int-to-byte v6, v6

    add-int/lit8 v7, v6, -0x1

    int-to-byte v7, v7

    const/4 v8, 0x4

    aget-byte v5, v5, v8

    neg-int v5, v5

    int-to-byte v5, v5

    invoke-static {v6, v7, v5}, Lccsansan/p/addDownloadListener;->IncentiveDownloadUtils(SSI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 4
    invoke-virtual {v0, p1, v3}, Lccsanandroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_4

    .line 12
    sget p1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x5b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    :try_start_2
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    throw p1

    .line 4
    :cond_3
    nop

    .line 12
    :goto_3
    return-object v4

    .line 9
    :cond_4
    iget-object p1, p1, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lccsansan/p/addDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 12
    :cond_5
    nop

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/p/addDownloadListener$getDownloadingList;

    .line 12
    iget-object v5, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget p1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x2b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_4
    packed-switch p1, :pswitch_data_2

    :goto_5
    goto :goto_6

    :pswitch_2
    :try_start_3
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception p1

    throw p1

    :goto_6
    sget p1, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 p1, p1, 0x17

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_7

    const/4 v2, 0x1

    :cond_7
    packed-switch v2, :pswitch_data_3

    return-object v1

    :pswitch_3
    :try_start_4
    array-length p1, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    return-object v1

    :catchall_3
    move-exception p1

    throw p1

    :cond_8
    return-object v4

    .line 1
    :catchall_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_9

    throw v0

    :cond_9
    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-wide v4, Lccsansan/p/addDownloadListener;->deleteDownItem:J

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

.method static synthetic getDownloadingList(Lccsansan/p/addDownloadListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsansan/p/addDownloadListener;->addDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 p1, p1, 0x37

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsansan/p/addDownloadListener;Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)Lccsansan/p/addDownloadListener$getDownloadingList;
    .locals 2

    .line 5
    sget v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2}, Lccsansan/p/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Lccsansan/da/removeDownloadListener;)Lccsansan/p/addDownloadListener$getDownloadingList;

    move-result-object p0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p1, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 p1, p1, 0x15

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic getDownloadingList(Lccsansan/p/addDownloadListener;)Lccsansan/p/addDownloadListener$getDownloadingRecordByUrl;
    .locals 2

    .line 2
    sget v0, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iget-object p0, p0, Lccsansan/p/addDownloadListener;->unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingRecordByUrl;

    packed-switch v0, :pswitch_data_0

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

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static getDownloadingList()V
    .locals 2

    const-wide v0, 0x515974eab13ae4e3L    # 7.727179856028911E83

    sput-wide v0, Lccsansan/p/addDownloadListener;->deleteDownItem:J

    return-void
.end method

.method private getDownloadingList(Ljava/lang/String;)V
    .locals 4

    .line 7
    nop

    .line 1
    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lccsansan/p/addDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    sget v0, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 3
    :cond_1
    :pswitch_0
    nop

    .line 5
    const-string v0, ".sapk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Lccsansan/p/addDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    sget p1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 p1, p1, 0x2

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method private getDownloadingRecordByUrl(Ljava/lang/String;)V
    .locals 4

    .line 11
    nop

    .line 8
    sget v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2
    const/16 v0, 0x16

    goto :goto_0

    :cond_0
    const/16 v0, 0x24

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    goto :goto_2

    :pswitch_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v2, 0x48

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 8
    :catchall_0
    move-exception p1

    throw p1

    .line 11
    :goto_2
    return-void

    .line 4
    :cond_1
    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    const/16 v0, 0x63

    goto :goto_3

    :cond_2
    const/16 v0, 0x4c

    :goto_3
    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1

    goto :goto_7

    .line 8
    :pswitch_1
    sget v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 2
    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_4
    const-string v3, ".sapk"

    packed-switch v0, :pswitch_data_2

    .line 8
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_5

    .line 4
    :pswitch_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_6

    .line 8
    :goto_5
    const/16 v3, 0xd

    :try_start_1
    div-int/2addr v3, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_4

    .line 4
    :goto_6
    return-void

    .line 8
    :catchall_1
    move-exception p1

    throw p1

    .line 7
    :cond_4
    :goto_7
    iget-object v0, p0, Lccsansan/p/addDownloadListener;->unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingRecordByUrl;

    if-eqz v0, :cond_5

    .line 2
    goto :goto_8

    :cond_5
    const/4 v2, 0x0

    :goto_8
    packed-switch v2, :pswitch_data_3

    goto :goto_a

    .line 11
    :pswitch_3
    sget v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_6

    .line 8
    invoke-direct {p0, p1}, Lccsansan/p/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/p/addDownloadListener$getDownloadingList;

    move-result-object v0

    const/16 v2, 0x36

    :try_start_2
    div-int/2addr v2, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v0, :cond_7

    goto :goto_9

    .line 11
    :catchall_2
    move-exception p1

    throw p1

    .line 8
    :cond_6
    invoke-direct {p0, p1}, Lccsansan/p/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/p/addDownloadListener$getDownloadingList;

    move-result-object v0

    if-nez v0, :cond_7

    .line 11
    :goto_9
    return-void

    :cond_7
    iget-object v1, p0, Lccsansan/p/addDownloadListener;->unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingRecordByUrl;

    invoke-interface {v1, v0, p1}, Lccsansan/p/addDownloadListener$getDownloadingRecordByUrl;->IncentiveDownloadUtils(Lccsansan/p/addDownloadListener$getDownloadingList;Ljava/lang/String;)V

    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x63
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsansan/p/addDownloadListener;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    sget v0, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-direct {p0, p1}, Lccsansan/p/addDownloadListener;->deleteDownItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method static synthetic removeDownloadListener(Lccsansan/p/addDownloadListener;Lccsansan/p/addDownloadListener$getDownloadingList;Ljava/lang/String;)V
    .locals 4

    .line 3
    sget v0, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lccsansan/p/addDownloadListener;->addDownloadListener(Lccsansan/p/addDownloadListener$getDownloadingList;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :try_start_0
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_0
    sget p0, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 p0, p0, 0x4b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-void

    :goto_2
    :try_start_1
    array-length p0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

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
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private removeDownloadListener(Ljava/lang/String;)Z
    .locals 5

    .line 23
    nop

    .line 7
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 7
    nop

    .line 9
    const-string v0, ".apk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    goto :goto_1

    .line 7
    :pswitch_0
    return v1

    .line 10
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    iget-object v0, p0, Lccsansan/p/addDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_1

    sget p1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x2d

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_3

    .line 14
    :pswitch_1
    iget-object v0, p0, Lccsansan/p/addDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    sget p1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x69

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 p1, p1, 0x2

    return v3

    .line 11
    :goto_3
    return v1

    .line 14
    :cond_2
    nop

    .line 18
    const-string v0, ".sapk"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lccsansan/p/addDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    const/4 v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_4
    packed-switch v0, :pswitch_data_2

    .line 20
    return v1

    .line 23
    :pswitch_2
    iget-object v0, p0, Lccsansan/p/addDownloadListener;->getDownloadedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v3

    :cond_4
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsansan/p/addDownloadListener;)Lccsanandroid/content/Context;
    .locals 3

    .line 2
    sget v0, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v1, v0, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-object p0, p0, Lccsansan/p/addDownloadListener;->getDownloadStatusByUrl:Lccsanandroid/content/Context;

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method private static unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 14
    sget v0, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const-string v2, ".apk"

    const-string v3, "_"

    const-string v4, " "

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    :try_start_0
    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 14
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    .line 11
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_0
    goto :goto_3

    .line 11
    :goto_2
    :pswitch_1
    nop

    .line 12
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 13
    :goto_3
    invoke-static {p0}, Lccsansan/bw/getActionType;->addDownloadListener(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 11
    sget p0, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 p0, p0, 0x73

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    .line 14
    const/4 v5, 0x0

    goto :goto_4

    :cond_3
    nop

    :goto_4
    packed-switch v5, :pswitch_data_2

    .line 11
    nop

    .line 14
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 13
    :pswitch_2
    nop

    .line 14
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_6

    :goto_5
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_6
    return-object p0

    .line 11
    :catchall_1
    move-exception p0

    throw p0

    .line 14
    :cond_4
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method private unifiedDownload()V
    .locals 2

    .line 60
    sget v0, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 58
    :cond_0
    iget-object v0, p0, Lccsansan/p/addDownloadListener;->unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingRecordByUrl;

    if-eqz v0, :cond_1

    .line 60
    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v1, v1, 0x2

    return-void

    :cond_1
    new-instance v0, Lccsansan/p/addDownloadListener$removeDownloadListener;

    invoke-direct {v0, p0}, Lccsansan/p/addDownloadListener$removeDownloadListener;-><init>(Lccsansan/p/addDownloadListener;)V

    iput-object v0, p0, Lccsansan/p/addDownloadListener;->unifiedDownload:Lccsansan/p/addDownloadListener$getDownloadingRecordByUrl;

    return-void
.end method

.method private unifiedDownload(Ljava/lang/String;)V
    .locals 5

    .line 10
    sget v0, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 4
    :cond_0
    iget-object v0, p0, Lccsansan/p/addDownloadListener;->getDownloadingRecordByUrl:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v0, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 4
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lccsansan/p/addDownloadListener;->getDownloadingRecordByUrl:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    .line 10
    return-void

    .line 7
    :cond_3
    :goto_1
    iget-object v0, p0, Lccsansan/p/addDownloadListener;->getDownloadingRecordByUrl:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/p/addDownloadListener$unifiedDownload;

    invoke-direct {v1, p0, p1}, Lccsansan/p/addDownloadListener$unifiedDownload;-><init>(Lccsansan/p/addDownloadListener;Ljava/lang/String;)V

    const/16 p1, 0x3e8

    invoke-virtual {v0, v1, p1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3

    .line 22
    sget v0, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v2, "/"

    packed-switch v0, :pswitch_data_0

    .line 0
    const/16 v0, 0x8

    if-eq p1, v0, :cond_5

    goto :goto_1

    .line 22
    :pswitch_0
    const/16 v0, 0x79

    if-eq p1, v0, :cond_5

    .line 0
    :goto_1
    const/16 v0, 0x80

    if-eq p1, v0, :cond_4

    .line 22
    add-int/lit8 v1, v1, 0x43

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 0
    :cond_1
    const/16 v0, 0x100

    if-eq p1, v0, :cond_3

    const/16 v0, 0x200

    if-eq p1, v0, :cond_2

    goto/16 :goto_4

    .line 1
    :cond_2
    sget-object p1, Lccsansan/p/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p2}, Lccsansan/p/addDownloadListener;->getDownloadingList(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2}, Lccsansan/p/addDownloadListener;->getDownloadStatusByUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4
    :cond_3
    sget-object p1, Lccsansan/p/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0, p2}, Lccsansan/p/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 6
    invoke-direct {p0, p2}, Lccsansan/p/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)V

    .line 22
    sget p1, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_3

    .line 19
    :cond_4
    sget-object p1, Lccsansan/p/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MOVED_TO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsansan/p/addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsansan/p/addDownloadListener;->getDownloadedList(Ljava/lang/String;)V

    goto :goto_4

    .line 21
    :cond_5
    sget-object p1, Lccsansan/p/addDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLOSE_WRITE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsansan/p/addDownloadListener;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsansan/p/addDownloadListener;->getDownloadedList(Ljava/lang/String;)V

    sget p1, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_6

    const/16 p1, 0x19

    goto :goto_2

    :cond_6
    const/16 p1, 0x58

    :goto_2
    packed-switch p1, :pswitch_data_1

    :goto_3
    :pswitch_1
    nop

    :cond_7
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_1
    .end packed-switch
.end method

.method public removeDownloadListener(Lccsansan/p/addDownloadListener$getDownloadingList;)V
    .locals 5

    .line 35
    sget v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 35
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 24
    iget-object v2, p1, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 35
    :pswitch_0
    sget p1, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 p1, p1, 0x7b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    const/16 p1, 0x25

    :try_start_0
    div-int/2addr p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_2
    return-void

    .line 27
    :cond_3
    iget-object v2, p0, Lccsansan/p/addDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 35
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    :goto_2
    packed-switch v3, :pswitch_data_1

    const/4 v0, 0x0

    goto :goto_4

    .line 27
    :pswitch_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/p/addDownloadListener$getDownloadingList;

    .line 28
    iget-object v3, v3, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v4, p1, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 35
    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    packed-switch v3, :pswitch_data_2

    goto :goto_1

    .line 28
    :pswitch_2
    nop

    .line 35
    nop

    .line 28
    :goto_4
    if-nez v0, :cond_6

    .line 35
    const/16 v0, 0x55

    goto :goto_5

    :cond_6
    const/16 v0, 0x54

    :goto_5
    packed-switch v0, :pswitch_data_3

    iget-object v0, p0, Lccsansan/p/addDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :pswitch_3
    sget p1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    add-int/lit8 p1, p1, 0x35

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/p/addDownloadListener;->pause:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x54
        :pswitch_3
    .end packed-switch
.end method

.method public startWatching()V
    .locals 2

    .line 2
    sget v0, Lccsansan/p/addDownloadListener;->pause:I

    add-int/lit8 v0, v0, 0xd

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/p/addDownloadListener;->getDownloadedCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x3d

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-super {p0}, Lccsanandroid/os/FileObserver;->startWatching()V

    .line 2
    invoke-direct {p0}, Lccsansan/p/addDownloadListener;->unifiedDownload()V

    goto :goto_1

    .line 1
    :pswitch_0
    invoke-super {p0}, Lccsanandroid/os/FileObserver;->startWatching()V

    .line 2
    invoke-direct {p0}, Lccsansan/p/addDownloadListener;->unifiedDownload()V

    goto :goto_2

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch
.end method
