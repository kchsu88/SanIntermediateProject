.class Lccsancom/san/ads/SanImageLoader$2;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/ads/SanImageLoader;->loadLandingRoundCornerUrl(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsanandroid/widget/ImageView;

.field addDownloadListener:Ljava/lang/String;

.field final synthetic getDownloadingList:Lccsanandroid/content/Context;

.field final synthetic removeDownloadListener:I

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsancom/san/ads/SanImageLoader;Ljava/lang/String;Lccsanandroid/content/Context;ILccsanandroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsancom/san/ads/SanImageLoader$2;->unifiedDownload:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/san/ads/SanImageLoader$2;->getDownloadingList:Lccsanandroid/content/Context;

    iput p4, p0, Lccsancom/san/ads/SanImageLoader$2;->removeDownloadListener:I

    iput-object p5, p0, Lccsancom/san/ads/SanImageLoader$2;->IncentiveDownloadUtils:Lccsanandroid/widget/ImageView;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    .line 2
    iput-object p2, p0, Lccsancom/san/ads/SanImageLoader$2;->addDownloadListener:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsancom/san/ads/SanImageLoader$2;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/bw/setAdSize;->unifiedDownload(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/san/ads/SanImageLoader$2;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/SanImageLoader$2;->getDownloadingList:Lccsanandroid/content/Context;

    .line 2
    :goto_0
    invoke-static {v0}, Lccsancom/bumptech/glide/Glide;->with(Lccsanandroid/content/Context;)Lccsancom/bumptech/glide/RequestManager;

    move-result-object v1

    iget-object v2, p0, Lccsancom/san/ads/SanImageLoader$2;->addDownloadListener:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Lccsancom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lccsancom/bumptech/glide/DrawableTypeRequest;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;

    const/4 v3, 0x0

    new-instance v4, Lccsancom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {v4, v0}, Lccsancom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>(Lccsanandroid/content/Context;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lccsansan/bw/IncentiveDownloadUtils;

    iget v5, p0, Lccsancom/san/ads/SanImageLoader$2;->removeDownloadListener:I

    invoke-direct {v4, v0, v5}, Lccsansan/bw/IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;I)V

    aput-object v4, v2, v3

    .line 4
    invoke-virtual {v1, v2}, Lccsancom/bumptech/glide/DrawableTypeRequest;->transform([Lccsancom/bumptech/glide/load/resource/bitmap/BitmapTransformation;)Lccsancom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/ads/SanImageLoader$2;->IncentiveDownloadUtils:Lccsanandroid/widget/ImageView;

    .line 5
    invoke-virtual {v0, v1}, Lccsancom/bumptech/glide/DrawableRequestBuilder;->into(Lccsanandroid/widget/ImageView;)Lccsancom/bumptech/glide/request/target/Target;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    const-string v1, "San.ImageLoader"

    const-string v2, "load url failed: "

    invoke-static {v1, v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public execute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/SanImageLoader$2;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/cv/getDownloadStatusByUrl;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/ads/SanImageLoader$2;->addDownloadListener:Ljava/lang/String;

    return-void
.end method
