.class Lccsansan/f/removeDownloadListener$deleteDownList;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/f/removeDownloadListener;->delete(Lccsansan/cs/unifiedDownload;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:I


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/xz/api/unifiedDownload;

.field final synthetic removeDownloadListener:Lccsancom/san/xz/base/XzRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/removeDownloadListener$deleteDownList;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/removeDownloadListener$deleteDownList;->getDownloadingList:I

    return-void
.end method

.method constructor <init>(Lccsansan/f/removeDownloadListener;Lccsancom/san/xz/api/unifiedDownload;Lccsancom/san/xz/base/XzRecord;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/f/removeDownloadListener$deleteDownList;->IncentiveDownloadUtils:Lccsancom/san/xz/api/unifiedDownload;

    iput-object p3, p0, Lccsansan/f/removeDownloadListener$deleteDownList;->removeDownloadListener:Lccsancom/san/xz/base/XzRecord;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 4

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener$deleteDownList;->addDownloadListener:I

    const/16 v1, 0x21

    and-int/lit8 v2, v0, -0x22

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v3, v1

    or-int/2addr v2, v3

    and-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x1

    xor-int v1, v2, v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener$deleteDownList;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v0, 0x1c

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lccsansan/f/removeDownloadListener$deleteDownList;->IncentiveDownloadUtils:Lccsancom/san/xz/api/unifiedDownload;

    iget-object v1, p0, Lccsansan/f/removeDownloadListener$deleteDownList;->removeDownloadListener:Lccsancom/san/xz/base/XzRecord;

    invoke-interface {v0, v1}, Lccsancom/san/xz/api/unifiedDownload;->addDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lccsansan/f/removeDownloadListener$deleteDownList;->IncentiveDownloadUtils:Lccsancom/san/xz/api/unifiedDownload;

    iget-object v1, p0, Lccsansan/f/removeDownloadListener$deleteDownList;->removeDownloadListener:Lccsancom/san/xz/base/XzRecord;

    invoke-interface {v0, v1}, Lccsancom/san/xz/api/unifiedDownload;->addDownloadListener(Lccsancom/san/xz/base/XzRecord;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method
