.class Lccsansan/f/removeDownloadListener$resume;
.super Lccsanandroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/f/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/f/removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/removeDownloadListener$resume;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/removeDownloadListener$resume;->getDownloadingList:I

    return-void
.end method

.method constructor <init>(Lccsansan/f/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/f/removeDownloadListener$resume;->IncentiveDownloadUtils:Lccsansan/f/removeDownloadListener;

    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 2

    .line 1
    sget p1, Lccsansan/f/removeDownloadListener$resume;->getDownloadingList:I

    or-int/lit8 v0, p1, 0x6e

    const/4 v1, 0x1

    shl-int/2addr v0, v1

    xor-int/lit8 p1, p1, 0x6e

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    rem-int/lit16 p1, v0, 0x80

    sput p1, Lccsansan/f/removeDownloadListener$resume;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    :try_start_0
    iget-object p1, p0, Lccsansan/f/removeDownloadListener$resume;->IncentiveDownloadUtils:Lccsansan/f/removeDownloadListener;

    invoke-static {p1, p2}, Lccsansan/f/removeDownloadListener;->unifiedDownload(Lccsansan/f/removeDownloadListener;Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget p1, Lccsansan/f/removeDownloadListener$resume;->addDownloadListener:I

    or-int/lit8 p2, p1, 0x4

    shl-int/2addr p2, v1

    xor-int/lit8 p1, p1, 0x4

    sub-int/2addr p2, p1

    or-int/lit8 p1, p2, -0x1

    shl-int/2addr p1, v1

    xor-int/lit8 p2, p2, -0x1

    sub-int/2addr p1, p2

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/f/removeDownloadListener$resume;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    sget p1, Lccsansan/f/removeDownloadListener$resume;->getDownloadingList:I

    xor-int/lit8 p2, p1, 0x6f

    and-int/lit8 p1, p1, 0x6f

    shl-int/2addr p1, v1

    xor-int/lit8 p1, p1, -0x1

    sub-int/2addr p2, p1

    sub-int/2addr p2, v1

    rem-int/lit16 p1, p2, 0x80

    sput p1, Lccsansan/f/removeDownloadListener$resume;->addDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    const/16 p1, 0x20

    goto :goto_1

    :cond_2
    const/16 p1, 0x52

    :goto_1
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method
