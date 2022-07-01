.class Lccsancom/san/proaz/getDownloadingList$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/proaz/getDownloadingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic removeDownloadListener:Lccsancom/san/proaz/getDownloadingList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proaz/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/proaz/getDownloadingList$getDownloadingList;->unifiedDownload:I

    return-void
.end method

.method constructor <init>(Lccsancom/san/proaz/getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/proaz/getDownloadingList$getDownloadingList;->removeDownloadListener:Lccsancom/san/proaz/getDownloadingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 3

    .line 2
    sget v0, Lccsancom/san/proaz/getDownloadingList$getDownloadingList;->unifiedDownload:I

    or-int/lit8 v1, v0, 0x5b

    shl-int/lit8 v2, v1, 0x1

    and-int/lit8 v0, v0, 0x5b

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    neg-int v0, v0

    or-int v1, v2, v0

    shl-int/lit8 v1, v1, 0x1

    xor-int/2addr v0, v2

    sub-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsancom/san/proaz/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v0, 0x27

    goto :goto_0

    :cond_0
    const/16 v0, 0x5f

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1
    iget-object v0, p0, Lccsancom/san/proaz/getDownloadingList$getDownloadingList;->removeDownloadListener:Lccsancom/san/proaz/getDownloadingList;

    invoke-virtual {p1}, Lccsanandroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lccsancom/san/proaz/getDownloadingList;->IncentiveDownloadUtils(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/san/proaz/getDownloadingList;->getDownloadingList(Lccsancom/san/proaz/getDownloadingList;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lccsancom/san/proaz/getDownloadingList$getDownloadingList;->removeDownloadListener:Lccsancom/san/proaz/getDownloadingList;

    invoke-virtual {p1}, Lccsancom/san/proaz/getDownloadingList;->getDownloadingList()V

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Lccsancom/san/proaz/getDownloadingList$getDownloadingList;->removeDownloadListener:Lccsancom/san/proaz/getDownloadingList;

    invoke-virtual {p1}, Lccsanandroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Lccsancom/san/proaz/getDownloadingList;->IncentiveDownloadUtils(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/san/proaz/getDownloadingList;->getDownloadingList(Lccsancom/san/proaz/getDownloadingList;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lccsancom/san/proaz/getDownloadingList$getDownloadingList;->removeDownloadListener:Lccsancom/san/proaz/getDownloadingList;

    invoke-virtual {p1}, Lccsancom/san/proaz/getDownloadingList;->getDownloadingList()V

    const/16 p1, 0x48

    :try_start_0
    div-int/lit8 p1, p1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch
.end method
