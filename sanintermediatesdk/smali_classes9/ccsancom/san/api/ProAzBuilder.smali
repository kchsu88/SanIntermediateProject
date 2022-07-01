.class public Lccsancom/san/api/ProAzBuilder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/api/ProAzBuilder$AzViewHolder;,
        Lccsancom/san/api/ProAzBuilder$Builder;
    }
.end annotation


# instance fields
.field private removeDownloadListener:Lccsancom/san/api/ProAzBuilder$Builder;


# direct methods
.method private constructor <init>(Lccsancom/san/api/ProAzBuilder$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lccsancom/san/api/ProAzBuilder;->removeDownloadListener:Lccsancom/san/api/ProAzBuilder$Builder;

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/san/api/ProAzBuilder$Builder;Lccsancom/san/api/ProAzBuilder$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsancom/san/api/ProAzBuilder;-><init>(Lccsancom/san/api/ProAzBuilder$Builder;)V

    return-void
.end method


# virtual methods
.method public createRootView(Lccsanandroid/content/Context;)Lccsanandroid/view/View;
    .locals 3

    .line 1
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lccsancom/san/api/ProAzBuilder;->getLayoutId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final getCloseImageId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/api/ProAzBuilder;->removeDownloadListener:Lccsancom/san/api/ProAzBuilder$Builder;

    invoke-static {v0}, Lccsancom/san/api/ProAzBuilder$Builder;->unifiedDownload(Lccsancom/san/api/ProAzBuilder$Builder;)I

    move-result v0

    return v0
.end method

.method public final getCtaTextId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/api/ProAzBuilder;->removeDownloadListener:Lccsancom/san/api/ProAzBuilder$Builder;

    invoke-static {v0}, Lccsancom/san/api/ProAzBuilder$Builder;->IncentiveDownloadUtils(Lccsancom/san/api/ProAzBuilder$Builder;)I

    move-result v0

    return v0
.end method

.method public final getDescTextId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/api/ProAzBuilder;->removeDownloadListener:Lccsancom/san/api/ProAzBuilder$Builder;

    invoke-static {v0}, Lccsancom/san/api/ProAzBuilder$Builder;->removeDownloadListener(Lccsancom/san/api/ProAzBuilder$Builder;)I

    move-result v0

    return v0
.end method

.method public final getIconImageId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/api/ProAzBuilder;->removeDownloadListener:Lccsancom/san/api/ProAzBuilder$Builder;

    invoke-static {v0}, Lccsancom/san/api/ProAzBuilder$Builder;->getDownloadingList(Lccsancom/san/api/ProAzBuilder$Builder;)I

    move-result v0

    return v0
.end method

.method public final getLayoutId()I
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/api/ProAzBuilder;->removeDownloadListener:Lccsancom/san/api/ProAzBuilder$Builder;

    invoke-static {v0}, Lccsancom/san/api/ProAzBuilder$Builder;->addDownloadListener(Lccsancom/san/api/ProAzBuilder$Builder;)I

    move-result v0

    return v0
.end method

.method public renderViewHolder(Lccsanandroid/view/View;)Lccsancom/san/api/ProAzBuilder$AzViewHolder;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lccsancom/san/api/ProAzBuilder$AzViewHolder;->unifiedDownload(Lccsanandroid/view/View;Lccsancom/san/api/ProAzBuilder;)Lccsancom/san/api/ProAzBuilder$AzViewHolder;

    move-result-object p1

    return-object p1
.end method
