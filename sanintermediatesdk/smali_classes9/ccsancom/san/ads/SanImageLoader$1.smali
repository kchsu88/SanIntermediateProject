.class Lccsancom/san/ads/SanImageLoader$1;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/ads/SanImageLoader;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;ILccsancom/san/ads/SanImageLoader$OnLoadedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Ljava/lang/String;

.field addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadedList:Lccsanandroid/widget/ImageView;

.field final synthetic getDownloadingList:I

.field final synthetic removeDownloadListener:Lccsancom/san/ads/SanImageLoader$OnLoadedListener;

.field final synthetic unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsancom/san/ads/SanImageLoader;Ljava/lang/String;Lccsanandroid/content/Context;Lccsancom/san/ads/SanImageLoader$OnLoadedListener;ILccsanandroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsancom/san/ads/SanImageLoader$1;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/san/ads/SanImageLoader$1;->unifiedDownload:Lccsanandroid/content/Context;

    iput-object p4, p0, Lccsancom/san/ads/SanImageLoader$1;->removeDownloadListener:Lccsancom/san/ads/SanImageLoader$OnLoadedListener;

    iput p5, p0, Lccsancom/san/ads/SanImageLoader$1;->getDownloadingList:I

    iput-object p6, p0, Lccsancom/san/ads/SanImageLoader$1;->getDownloadedList:Lccsanandroid/widget/ImageView;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    .line 2
    iput-object p2, p0, Lccsancom/san/ads/SanImageLoader$1;->addDownloadListener:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/SanImageLoader$1;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/bw/setAdSize;->unifiedDownload(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/san/ads/SanImageLoader$1;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/SanImageLoader$1;->unifiedDownload:Lccsanandroid/content/Context;

    .line 2
    :goto_0
    invoke-static {v0}, Lccsancom/bumptech/glide/Glide;->with(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/ads/SanImageLoader$1;->addDownloadListener:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    new-instance v1, Lccsancom/san/ads/SanImageLoader$1$1;

    invoke-direct {v1, p0}, Lccsancom/san/ads/SanImageLoader$1$1;-><init>(Lccsancom/san/ads/SanImageLoader$1;)V

    .line 4
    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/DrawableTypeRequest;->listener(Lccsancom/bumptech/glide/request/RequestListener;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget v1, p0, Lccsancom/san/ads/SanImageLoader$1;->getDownloadingList:I

    .line 19
    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/ads/SanImageLoader$1;->getDownloadedList:Lccsanandroid/widget/ImageView;

    .line 20
    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->into(Lccsanandroid/widget/ImageView;)Lccsancom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public execute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/SanImageLoader$1;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/cv/getDownloadStatusByUrl;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/ads/SanImageLoader$1;->addDownloadListener:Ljava/lang/String;

    return-void
.end method
