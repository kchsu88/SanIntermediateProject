.class final Lccsancom/san/az/addDownloadListener$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/az/getDownloadedRecordByUrl$deleteDownItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/addDownloadListener;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/addDownloadListener$getDownloadingList;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/addDownloadListener$getDownloadingList;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    iput-object p2, p0, Lccsancom/san/az/addDownloadListener$getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unifiedDownload(ZLjava/lang/String;)V
    .locals 4

    .line 4
    sget p2, Lccsancom/san/az/addDownloadListener$getDownloadingList;->removeDownloadListener:I

    and-int/lit8 v0, p2, 0x56

    or-int/lit8 p2, p2, 0x56

    add-int/2addr v0, p2

    and-int/lit8 p2, v0, -0x1

    or-int/lit8 v0, v0, -0x1

    add-int/2addr p2, v0

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/az/addDownloadListener$getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    packed-switch p2, :pswitch_data_0

    .line 0
    if-nez p1, :cond_2

    goto :goto_1

    .line 4
    :pswitch_0
    const/4 p2, 0x0

    :try_start_0
    array-length p2, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    goto :goto_2

    :cond_2
    const/4 v0, 0x1

    :goto_2
    packed-switch v0, :pswitch_data_2

    :goto_3
    goto :goto_4

    .line 1
    :pswitch_1
    iget-object p1, p0, Lccsancom/san/az/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    const-string p2, "mode"

    const-string v0, "full_intent_active"

    invoke-virtual {p1, p2, v0}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lccsancom/san/az/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedList;

    const-string v0, "no_permission"

    invoke-static {p1, v0, p2}, Lccsancom/san/az/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/p/getDownloadedList;)V

    .line 4
    sget p1, Lccsancom/san/az/addDownloadListener$getDownloadingList;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x30

    sub-int/2addr p1, v1

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/az/addDownloadListener$getDownloadingList;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/16 p1, 0x29

    goto :goto_3

    :cond_3
    const/16 p1, 0x30

    goto :goto_3

    :goto_4
    new-instance p1, Lccsanandroid/os/Handler;

    invoke-direct {p1}, Lccsanandroid/os/Handler;-><init>()V

    new-instance p2, Lccsancom/san/az/addDownloadListener$getDownloadingList$addDownloadListener;

    invoke-direct {p2, p0}, Lccsancom/san/az/addDownloadListener$getDownloadingList$addDownloadListener;-><init>(Lccsancom/san/az/addDownloadListener$getDownloadingList;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, p2, v2, v3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget p1, Lccsancom/san/az/addDownloadListener$getDownloadingList;->removeDownloadListener:I

    and-int/lit8 p2, p1, 0x6d

    xor-int/lit8 v0, p2, -0x1

    or-int/lit8 p1, p1, 0x6d

    and-int/2addr p1, v0

    shl-int/2addr p2, v1

    and-int v0, p1, p2

    or-int/2addr p1, p2

    add-int/2addr v0, p1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsancom/san/az/addDownloadListener$getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void

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
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
