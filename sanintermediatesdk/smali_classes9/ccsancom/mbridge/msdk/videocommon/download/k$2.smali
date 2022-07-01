.class final Lccsancom/mbridge/msdk/videocommon/download/k$2;
.super Ljava/lang/Object;
.source "UnitCacheCtroller.java"

# interfaces
.implements Lccsancom/mbridge/msdk/videocommon/listener/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/videocommon/download/k;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field final synthetic b:Lccsancom/mbridge/msdk/videocommon/download/k;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/videocommon/download/k;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 842
    iput-object p1, p0, Lccsancom/mbridge/msdk/videocommon/download/k$2;->b:Lccsancom/mbridge/msdk/videocommon/download/k;

    iput-object p2, p0, Lccsancom/mbridge/msdk/videocommon/download/k$2;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .line 846
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k$2;->b:Lccsancom/mbridge/msdk/videocommon/download/k;

    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/download/k;)Lccsancom/mbridge/msdk/videocommon/listener/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k$2;->b:Lccsancom/mbridge/msdk/videocommon/download/k;

    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/download/k;)Lccsancom/mbridge/msdk/videocommon/listener/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    .line 850
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k$2;->b:Lccsancom/mbridge/msdk/videocommon/download/k;

    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Lccsancom/mbridge/msdk/videocommon/download/k;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k$2;->b:Lccsancom/mbridge/msdk/videocommon/download/k;

    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Lccsancom/mbridge/msdk/videocommon/download/k;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k$2;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k$2;->b:Lccsancom/mbridge/msdk/videocommon/download/k;

    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Lccsancom/mbridge/msdk/videocommon/download/k;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/k$2;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/videocommon/listener/a;

    .line 852
    if-eqz v0, :cond_1

    .line 853
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;)V

    .line 856
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 860
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k$2;->b:Lccsancom/mbridge/msdk/videocommon/download/k;

    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/download/k;)Lccsancom/mbridge/msdk/videocommon/listener/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k$2;->b:Lccsancom/mbridge/msdk/videocommon/download/k;

    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/download/k;->a(Lccsancom/mbridge/msdk/videocommon/download/k;)Lccsancom/mbridge/msdk/videocommon/listener/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k$2;->b:Lccsancom/mbridge/msdk/videocommon/download/k;

    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Lccsancom/mbridge/msdk/videocommon/download/k;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k$2;->b:Lccsancom/mbridge/msdk/videocommon/download/k;

    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Lccsancom/mbridge/msdk/videocommon/download/k;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k$2;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v0, :cond_1

    .line 865
    iget-object v0, p0, Lccsancom/mbridge/msdk/videocommon/download/k$2;->b:Lccsancom/mbridge/msdk/videocommon/download/k;

    invoke-static {v0}, Lccsancom/mbridge/msdk/videocommon/download/k;->b(Lccsancom/mbridge/msdk/videocommon/download/k;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/videocommon/download/k$2;->a:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/videocommon/listener/a;

    .line 866
    if-eqz v0, :cond_1

    .line 867
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/videocommon/listener/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    :cond_1
    return-void
.end method
