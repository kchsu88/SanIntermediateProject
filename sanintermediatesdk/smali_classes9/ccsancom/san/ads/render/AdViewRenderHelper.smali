.class public Lccsancom/san/ads/render/AdViewRenderHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTextView(Lccsanandroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "San.AdViewRenderHelper"

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to add text ("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") to null TextView."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_1

    const/16 p1, 0x8

    .line 7
    invoke-virtual {p0, p1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 8
    const-string p0, "Attempted to set TextView contents to null."

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static loadImage(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lccsancom/san/ads/render/AdViewRenderHelper;->loadImage(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;I)V

    return-void
.end method

.method public static loadImage(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;I)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x8

    .line 3
    invoke-virtual {p2, p0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p2, v0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 6
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lccsancom/san/ads/SanImageLoader;->loadUri(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;I)V

    :goto_0
    return-void
.end method

.method public static loadMediaView(Lccsancom/san/ads/MediaView;Lccsanandroid/view/View;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lccsanandroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    if-eqz p0, :cond_1

    const/16 v1, 0x8

    .line 3
    invoke-virtual {p0, v1}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0, p1, v0}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {p0, v1}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 10
    new-instance p1, Lccsanandroid/widget/ImageView;

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 11
    sget-object v2, Lccsanandroid/widget/ImageView$ScaleType;->CENTER_CROP:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    .line 12
    invoke-virtual {p0, p1, v0}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 13
    invoke-virtual {p0, v1}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 14
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2, p1}, Lccsancom/san/ads/render/AdViewRenderHelper;->loadImage(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;)V

    :cond_1
    :goto_0
    return-void
.end method
