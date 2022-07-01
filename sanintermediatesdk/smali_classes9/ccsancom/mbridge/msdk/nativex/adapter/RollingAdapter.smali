.class public Lccsancom/mbridge/msdk/nativex/adapter/RollingAdapter;
.super Lccsanandroidx/viewpager/widget/PagerAdapter;
.source "RollingAdapter.java"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private listview:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mvinterface:Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView$a;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lccsanandroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/adapter/RollingAdapter;->list:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/adapter/RollingAdapter;->listview:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/adapter/RollingAdapter;->list:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public destroyItem(Lccsanandroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 59
    iget-object p3, p0, Lccsancom/mbridge/msdk/nativex/adapter/RollingAdapter;->listview:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/View;

    invoke-virtual {p1, p2}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    .line 60
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 35
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/adapter/RollingAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMvinterface()Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView$a;
    .locals 1

    .line 22
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/adapter/RollingAdapter;->mvinterface:Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView$a;

    return-object v0
.end method

.method public instantiateItem(Lccsanandroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 45
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/adapter/RollingAdapter;->mvinterface:Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/adapter/RollingAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 46
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/adapter/RollingAdapter;->mvinterface:Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView$a;

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/adapter/RollingAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/out/Frame;

    invoke-interface {v0, v1, p2}, Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView$a;->a(Lccsancom/mbridge/msdk/out/Frame;I)Lccsanandroid/view/View;

    move-result-object p2

    .line 47
    if-eqz p2, :cond_0

    .line 48
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/adapter/RollingAdapter;->listview:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p1, p2}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;)V

    .line 50
    return-object p2

    .line 54
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isViewFromObject(Lccsanandroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 40
    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setMvinterface(Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView$a;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/adapter/RollingAdapter;->mvinterface:Lccsancom/mbridge/msdk/nativex/view/MBNativeRollView$a;

    .line 27
    return-void
.end method
