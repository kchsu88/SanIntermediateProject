.class public interface abstract Lccsancom/mbridge/msdk/out/Adapter;
.super Ljava/lang/Object;
.source "Adapter.java"


# virtual methods
.method public varargs abstract init([Ljava/lang/Object;)Z
.end method

.method public abstract loadAd(Lccsancom/mbridge/msdk/out/AdapterListener;)Z
.end method

.method public abstract registerView(Lccsancom/mbridge/msdk/out/Campaign;Lccsanandroid/view/View;)V
.end method

.method public abstract registerView(Lccsancom/mbridge/msdk/out/Campaign;Lccsanandroid/view/View;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            "Lccsanandroid/view/View;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregisterView(Lccsancom/mbridge/msdk/out/Campaign;Lccsanandroid/view/View;)V
.end method

.method public abstract unregisterView(Lccsancom/mbridge/msdk/out/Campaign;Lccsanandroid/view/View;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/out/Campaign;",
            "Lccsanandroid/view/View;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method
