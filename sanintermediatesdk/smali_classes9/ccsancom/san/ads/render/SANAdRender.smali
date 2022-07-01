.class public interface abstract Lccsancom/san/ads/render/SANAdRender;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lccsancom/san/ads/core/SANAd;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createAdView(Lccsanandroid/content/Context;Lccsancom/san/ads/core/SANAd;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "TT;",
            "Lccsanandroid/view/ViewGroup;",
            ")",
            "Lccsanandroid/view/View;"
        }
    .end annotation
.end method

.method public abstract renderAdView(Lccsanandroid/view/View;Lccsancom/san/ads/core/SANAd;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method public abstract supports(Lccsancom/san/ads/core/SANAd;)Z
.end method
