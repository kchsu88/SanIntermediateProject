.class public final Lccsanandroidx/viewpager2/widget/CompositePageTransformer;
.super Ljava/lang/Object;
.source "CompositePageTransformer.java"

# interfaces
.implements Lccsanandroidx/viewpager2/widget/ViewPager2$PageTransformer;


# instance fields
.field private final mTransformers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroidx/viewpager2/widget/ViewPager2$PageTransformer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/viewpager2/widget/CompositePageTransformer;->mTransformers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addTransformer(Lccsanandroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .locals 1
    .param p1, "transformer"    # Lccsanandroidx/viewpager2/widget/ViewPager2$PageTransformer;

    .line 42
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/CompositePageTransformer;->mTransformers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    return-void
.end method

.method public removeTransformer(Lccsanandroidx/viewpager2/widget/ViewPager2$PageTransformer;)V
    .locals 1
    .param p1, "transformer"    # Lccsanandroidx/viewpager2/widget/ViewPager2$PageTransformer;

    .line 47
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/CompositePageTransformer;->mTransformers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public transformPage(Lccsanandroid/view/View;F)V
    .locals 2
    .param p1, "page"    # Lccsanandroid/view/View;
    .param p2, "position"    # F

    .line 52
    iget-object v0, p0, Lccsanandroidx/viewpager2/widget/CompositePageTransformer;->mTransformers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/viewpager2/widget/ViewPager2$PageTransformer;

    .line 53
    .local v1, "transformer":Lccsanandroidx/viewpager2/widget/ViewPager2$PageTransformer;
    invoke-interface {v1, p1, p2}, Lccsanandroidx/viewpager2/widget/ViewPager2$PageTransformer;->transformPage(Lccsanandroid/view/View;F)V

    .line 54
    .end local v1    # "transformer":Lccsanandroidx/viewpager2/widget/ViewPager2$PageTransformer;
    goto :goto_0

    .line 55
    :cond_0
    return-void
.end method
