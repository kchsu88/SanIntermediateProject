.class public Lccsancom/mbridge/msdk/nativex/listener/RollingPagerListenrt;
.super Ljava/lang/Object;
.source "RollingPagerListenrt.java"

# interfaces
.implements Lccsanandroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field private FilpListening:Lccsancom/mbridge/msdk/out/NativeListener$FilpListener;

.field private frames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private reportController:Lccsancom/mbridge/msdk/foundation/same/report/c;

.field private unit_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/nativex/listener/RollingPagerListenrt;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 42
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 46
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/nativex/listener/RollingPagerListenrt;->reportRollBC(I)V

    .line 52
    return-void
.end method

.method public reportRollBC(I)V
    .locals 7

    .line 55
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/listener/RollingPagerListenrt;->FilpListening:Lccsancom/mbridge/msdk/out/NativeListener$FilpListener;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/out/NativeListener$FilpListener;->filpEvent(I)V

    .line 59
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/listener/RollingPagerListenrt;->list:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/listener/RollingPagerListenrt;->list:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lccsancom/mbridge/msdk/nativex/listener/RollingPagerListenrt;->frames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/out/Frame;

    .line 65
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/out/Frame;->getCampaigns()Ljava/util/List;

    move-result-object v1

    .line 66
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 67
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 68
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    nop

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 70
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 71
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_2

    .line 72
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 74
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 79
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rid_n"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "frame_id"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/out/Frame;->getTemplate()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "template"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "cids"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/listener/RollingPagerListenrt;->unit_id:Ljava/lang/String;

    const-string v2, "unit_id"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string p1, "2000005"

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/same/report/a;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a()Lccsancom/mbridge/msdk/foundation/same/report/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/same/report/a;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 89
    :cond_4
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/listener/RollingPagerListenrt;->reportController:Lccsancom/mbridge/msdk/foundation/same/report/c;

    iget-object v2, p0, Lccsancom/mbridge/msdk/nativex/listener/RollingPagerListenrt;->unit_id:Ljava/lang/String;

    const-string v3, "native_rollbc"

    invoke-virtual {v1, v3, p1, v2, v0}, Lccsancom/mbridge/msdk/foundation/same/report/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/out/Frame;)V

    .line 92
    :cond_5
    :goto_2
    return-void
.end method

.method public setCampList(Ljava/util/List;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Frame;",
            ">;",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/listener/RollingPagerListenrt;->frames:Ljava/util/List;

    .line 34
    new-instance p1, Lccsancom/mbridge/msdk/foundation/same/report/c;

    const/4 v0, 0x2

    invoke-direct {p1, p2, v0}, Lccsancom/mbridge/msdk/foundation/same/report/c;-><init>(Lccsanandroid/content/Context;I)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/listener/RollingPagerListenrt;->reportController:Lccsancom/mbridge/msdk/foundation/same/report/c;

    .line 35
    iput-object p3, p0, Lccsancom/mbridge/msdk/nativex/listener/RollingPagerListenrt;->unit_id:Ljava/lang/String;

    .line 36
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/listener/RollingPagerListenrt;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 37
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/nativex/listener/RollingPagerListenrt;->reportRollBC(I)V

    .line 38
    return-void
.end method

.method public setFilpListening(Lccsancom/mbridge/msdk/out/NativeListener$FilpListener;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/listener/RollingPagerListenrt;->FilpListening:Lccsancom/mbridge/msdk/out/NativeListener$FilpListener;

    .line 30
    return-void
.end method
