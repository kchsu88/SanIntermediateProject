.class public abstract Lccsancom/applovin/impl/mediation/debugger/ui/d/d;
.super Lccsanandroid/widget/BaseAdapter;

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/mediation/debugger/ui/d/d$a;
    }
.end annotation


# instance fields
.field private final a:Lccsanandroid/view/LayoutInflater;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Lccsanandroid/content/Context;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lccsancom/applovin/impl/mediation/debugger/ui/d/d$a;


# direct methods
.method protected constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lccsanandroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->b:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->d:Ljava/util/Map;

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->c:Lccsanandroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/view/LayoutInflater;

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->a:Lccsanandroid/view/LayoutInflater;

    return-void
.end method

.method private e(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/a;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->b()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->d:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->a(I)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v2

    if-gt p1, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-instance v2, Lccsancom/applovin/impl/mediation/debugger/ui/d/a;

    sub-int/2addr p1, v1

    invoke-direct {v2, v0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/a;-><init>(II)V

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected abstract a(I)I
.end method

.method public a(Lccsanandroid/widget/ListView;)Lccsanandroid/graphics/Bitmap;
    .locals 11

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->getCount()I

    move-result v0

    invoke-virtual {p1}, Lccsanandroid/widget/ListView;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v2}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v0, :cond_0

    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->getView(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v1, v3}, Lccsanandroid/view/View;->measure(II)V

    invoke-virtual {v7}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v7}, Lccsanandroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v7, v2, v2, v8, v9}, Lccsanandroid/view/View;->layout(IIII)V

    invoke-virtual {v7}, Lccsanandroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v7}, Lccsanandroid/view/View;->getMeasuredHeight()I

    move-result v9

    sget-object v10, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v8

    new-instance v9, Lccsanandroid/graphics/Canvas;

    invoke-direct {v9, v8}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    invoke-virtual {v7, v9}, Lccsanandroid/view/View;->draw(Lccsanandroid/graphics/Canvas;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lccsanandroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lccsanandroid/widget/ListView;->getMeasuredWidth()I

    move-result p1

    sget-object v0, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {p1, v6, v0}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object p1

    new-instance v0, Lccsanandroid/graphics/Canvas;

    invoke-direct {v0, p1}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    new-instance v1, Lccsanandroid/graphics/Paint;

    invoke-direct {v1}, Lccsanandroid/graphics/Paint;-><init>()V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/graphics/Bitmap;

    const/4 v5, 0x0

    int-to-float v6, v2

    invoke-virtual {v0, v4, v5, v6, v1}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;FFLccsanandroid/graphics/Paint;)V

    invoke-virtual {v4}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v2, v5

    invoke-virtual {v4}, Lccsanandroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public a(Lccsancom/applovin/impl/mediation/debugger/ui/d/d$a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->e:Lccsancom/applovin/impl/mediation/debugger/ui/d/d$a;

    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract b()I
.end method

.method protected abstract b(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c;
.end method

.method protected abstract c(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation
.end method

.method public d(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    return-object p1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->d(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->d(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->i()I

    move-result p1

    return p1
.end method

.method public getView(ILccsanandroid/view/View;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;
    .locals 3

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->d(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v0

    if-nez p2, :cond_0

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->a:Lccsanandroid/view/LayoutInflater;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->j()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p3, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object p2

    new-instance p3, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;

    invoke-direct {p3}, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;-><init>()V

    const v1, 0x1020014

    invoke-virtual {p2, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p3, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->a:Lccsanandroid/widget/TextView;

    const v1, 0x1020015

    invoke-virtual {p2, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/TextView;

    iput-object v1, p3, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->b:Lccsanandroid/widget/TextView;

    sget v1, Lccsancom/applovin/sdk/R$id;->imageView:I

    invoke-virtual {p2, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p3, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->c:Lccsanandroid/widget/ImageView;

    sget v1, Lccsancom/applovin/sdk/R$id;->detailImageView:I

    invoke-virtual {p2, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    iput-object v1, p3, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->d:Lccsanandroid/widget/ImageView;

    invoke-virtual {p2, p3}, Lccsanandroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, p0}, Lccsanandroid/view/View;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lccsanandroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;

    :goto_0
    invoke-virtual {p3, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->a(I)V

    invoke-virtual {p3, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->a(Lccsancom/applovin/impl/mediation/debugger/ui/d/c;)V

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->b()Z

    move-result p1

    invoke-virtual {p2, p1}, Lccsanandroid/view/View;->setEnabled(Z)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    invoke-static {}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->h()I

    move-result v0

    return v0
.end method

.method public i()V
    .locals 1

    new-instance v0, Lccsancom/applovin/impl/mediation/debugger/ui/d/d$1;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d$1;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/d/d;)V

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isEnabled(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->d(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->b()Z

    move-result p1

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 6

    invoke-super {p0}, Lccsanandroid/widget/BaseAdapter;->notifyDataSetChanged()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->b:Ljava/util/List;

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->d:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->a(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->b:Ljava/util/List;

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->b(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->b:Ljava/util/List;

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->c(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v4, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->d:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->b:Ljava/util/List;

    new-instance v1, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;

    const-string v2, ""

    invoke-direct {v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/e;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onClick(Lccsanandroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Lccsanandroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->b()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/b;->a()I

    move-result p1

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->e(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/a;

    move-result-object p1

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->e:Lccsancom/applovin/impl/mediation/debugger/ui/d/d$a;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v1, p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d$a;->a(Lccsancom/applovin/impl/mediation/debugger/ui/d/a;Lccsancom/applovin/impl/mediation/debugger/ui/d/c;)V

    :cond_0
    return-void
.end method
