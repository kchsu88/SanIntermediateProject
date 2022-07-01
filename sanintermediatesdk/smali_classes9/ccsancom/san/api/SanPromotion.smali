.class public Lccsancom/san/api/SanPromotion;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hidePromotionDialog(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsancom/san/api/SanPromotion;->hidePromotionDialog(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;)V

    return-void
.end method

.method public static hidePromotionDialog(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lccsancom/san/proaz/getDownloadStatusByUrl;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;)V

    return-void
.end method

.method public static showPromotionDialog(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/api/PromotionPortal;->INCENTIVE:Lccsancom/san/api/PromotionPortal;

    invoke-virtual {v0}, Lccsancom/san/api/PromotionPortal;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lccsancom/san/proaz/getDownloadStatusByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showPromotionDialog(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lccsancom/san/proaz/getDownloadStatusByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static showPromotionWithView(Lccsanandroid/content/Context;Lccsancom/san/api/ProAzBuilder;)V
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/api/PromotionPortal;->INCENTIVE:Lccsancom/san/api/PromotionPortal;

    invoke-virtual {v0}, Lccsancom/san/api/PromotionPortal;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lccsancom/san/proaz/getDownloadStatusByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Lccsancom/san/api/ProAzBuilder;)V

    return-void
.end method
