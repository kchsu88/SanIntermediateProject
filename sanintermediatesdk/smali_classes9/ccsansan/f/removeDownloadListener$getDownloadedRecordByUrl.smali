.class Lccsansan/f/removeDownloadListener$getDownloadedRecordByUrl;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/f/removeDownloadListener;->unifiedDownload(Lccsancom/san/xz/base/XzRecord;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static removeDownloadListener:I


# instance fields
.field final synthetic getDownloadingList:Lccsansan/f/removeDownloadListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadedRecordByUrl;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadedRecordByUrl;->addDownloadListener:I

    return-void
.end method

.method constructor <init>(Lccsansan/f/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/f/removeDownloadListener$getDownloadedRecordByUrl;->getDownloadingList:Lccsansan/f/removeDownloadListener;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 4

    .line 1
    sget v0, Lccsansan/f/removeDownloadListener$getDownloadedRecordByUrl;->removeDownloadListener:I

    or-int/lit8 v1, v0, 0x59

    shl-int/lit8 v2, v1, 0x1

    and-int/lit8 v0, v0, 0x59

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    neg-int v0, v0

    or-int v1, v2, v0

    const/4 v3, 0x1

    shl-int/2addr v1, v3

    xor-int/2addr v0, v2

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener$getDownloadedRecordByUrl;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v3, 0x0

    :cond_0
    const-string v0, "Saved"

    iget-object v1, p0, Lccsansan/f/removeDownloadListener$getDownloadedRecordByUrl;->getDownloadingList:Lccsansan/f/removeDownloadListener;

    invoke-static {v1, v0}, Lccsansan/f/removeDownloadListener;->getDownloadingList(Lccsansan/f/removeDownloadListener;Ljava/lang/String;)V

    packed-switch v3, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
