.class public Lccsansan/f/removeDownloadListener$trackReportClick;
.super Lccsanandroid/os/Binder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/f/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "trackReportClick"
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I


# instance fields
.field final synthetic unifiedDownload:Lccsansan/f/removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/removeDownloadListener$trackReportClick;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/removeDownloadListener$trackReportClick;->addDownloadListener:I

    return-void
.end method

.method public constructor <init>(Lccsansan/f/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/f/removeDownloadListener$trackReportClick;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    invoke-direct {p0}, Lccsanandroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public unifiedDownload()Lccsansan/f/removeDownloadListener;
    .locals 5

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener$trackReportClick;->addDownloadListener:I

    xor-int/lit8 v1, v0, 0x47

    and-int/lit8 v2, v0, 0x47

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    and-int/lit8 v2, v0, -0x48

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x47

    or-int/2addr v0, v2

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener$trackReportClick;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v0, 0x2e

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/f/removeDownloadListener$trackReportClick;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/f/removeDownloadListener$trackReportClick;->unifiedDownload:Lccsansan/f/removeDownloadListener;

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    sget v2, Lccsansan/f/removeDownloadListener$trackReportClick;->IncentiveDownloadUtils:I

    or-int/lit8 v3, v2, 0x51

    shl-int/lit8 v3, v3, 0x1

    and-int/lit8 v4, v2, -0x52

    xor-int/lit8 v2, v2, -0x1

    and-int/lit8 v2, v2, 0x51

    or-int/2addr v2, v4

    neg-int v2, v2

    or-int v4, v3, v2

    shl-int/lit8 v4, v4, 0x1

    xor-int/2addr v2, v3

    sub-int/2addr v4, v2

    rem-int/lit16 v2, v4, 0x80

    sput v2, Lccsansan/f/removeDownloadListener$trackReportClick;->addDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    const/16 v2, 0x11

    goto :goto_2

    :cond_1
    const/16 v2, 0x21

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object v0

    :goto_3
    :try_start_1
    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_1
    .end packed-switch
.end method
