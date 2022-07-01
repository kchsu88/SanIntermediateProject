.class public interface abstract Lccsancom/san/ads/base/INativeAd;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getAdIconView()Lccsanandroid/view/View;
.end method

.method public varargs abstract getAdMediaView([Ljava/lang/Object;)Lccsanandroid/view/View;
.end method

.method public abstract getCallToAction()Ljava/lang/String;
.end method

.method public abstract getContent()Ljava/lang/String;
.end method

.method public abstract getCustomAdContainer()Lccsanandroid/view/ViewGroup;
.end method

.method public abstract getIconUrl()Ljava/lang/String;
.end method

.method public abstract getNativeAd()Lccsancom/san/ads/base/SANBaseAd;
.end method

.method public abstract getPosterUrl()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract prepare(Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout$LayoutParams;)V
.end method

.method public abstract prepare(Lccsanandroid/view/View;Ljava/util/List;Lccsanandroid/widget/FrameLayout$LayoutParams;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Lccsanandroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation
.end method
