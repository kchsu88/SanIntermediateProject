.class Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/mads/nativead/MadsNativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "getDownloadingList"
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;


# direct methods
.method private constructor <init>(Lccsancom/san/mads/nativead/MadsNativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/san/mads/nativead/MadsNativeAd;Lccsancom/san/mads/nativead/MadsNativeAd$IncentiveDownloadUtils;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;-><init>(Lccsancom/san/mads/nativead/MadsNativeAd;)V

    return-void
.end method

.method private unifiedDownload(Lccsanandroid/view/View;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-static {v0}, Lccsancom/san/mads/nativead/MadsNativeAd;->access$000(Lccsancom/san/mads/nativead/MadsNativeAd;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-static {v0}, Lccsancom/san/mads/nativead/MadsNativeAd;->access$000(Lccsancom/san/mads/nativead/MadsNativeAd;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedCount()Ljava/lang/String;

    move-result-object v0

    .line 4
    instance-of v1, p1, Lccsanandroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 5
    move-object v1, p1

    check-cast v1, Lccsanandroid/widget/TextView;

    .line 6
    invoke-virtual {v1}, Lccsanandroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1, v0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-static {v0}, Lccsancom/san/mads/nativead/MadsNativeAd;->access$100(Lccsancom/san/mads/nativead/MadsNativeAd;)Lccsansan/ck/getDownloadedList;

    move-result-object v0

    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    const/4 v1, -0x1

    const-string v3, "cardbutton"

    invoke-virtual {v0, p1, v3, v1}, Lccsansan/ck/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;I)V

    return v2

    .line 11
    :cond_0
    instance-of v1, p1, Lccsansan/j/unifiedDownload;

    if-eqz v1, :cond_1

    .line 12
    move-object v1, p1

    check-cast v1, Lccsansan/j/unifiedDownload;

    .line 13
    invoke-virtual {v1}, Lccsansan/j/unifiedDownload;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-static {v0}, Lccsancom/san/mads/nativead/MadsNativeAd;->access$000(Lccsancom/san/mads/nativead/MadsNativeAd;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    new-instance v3, Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList$IncentiveDownloadUtils;

    invoke-direct {v3, p0, p1}, Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList$IncentiveDownloadUtils;-><init>(Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;Lccsanandroid/view/View;)V

    invoke-virtual {v1, v0, v3}, Lccsansan/j/unifiedDownload;->registerClick(Lccsansan/dt/removeDownloadListener;Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;)V

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;)V
    .locals 2

    .line 1
    new-instance v0, Lccsanandroid/graphics/Rect;

    invoke-direct {v0}, Lccsanandroid/graphics/Rect;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->getGlobalVisibleRect(Lccsanandroid/graphics/Rect;)Z

    .line 3
    iget-object v1, p0, Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-static {v1}, Lccsancom/san/mads/nativead/MadsNativeAd;->access$100(Lccsancom/san/mads/nativead/MadsNativeAd;)Lccsansan/ck/getDownloadedList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;->unifiedDownload(Lccsanandroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Lccsancom/san/mads/nativead/MadsNativeAd$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/nativead/MadsNativeAd;

    invoke-static {v1}, Lccsancom/san/mads/nativead/MadsNativeAd;->access$100(Lccsancom/san/mads/nativead/MadsNativeAd;)Lccsansan/ck/getDownloadedList;

    move-result-object v1

    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lccsansan/ck/getDownloadedList;->addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/graphics/Rect;)V

    :cond_1
    return-void
.end method
