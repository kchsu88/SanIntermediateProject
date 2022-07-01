.class public Lccsancom/san/hybrid/ui/HybridLocalActivity;
.super Lccsancom/san/hybrid/ui/BaseHybridActivity;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/hybrid/ui/BaseHybridActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Lccsancom/san/hybrid/ui/BaseHybridActivity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method
