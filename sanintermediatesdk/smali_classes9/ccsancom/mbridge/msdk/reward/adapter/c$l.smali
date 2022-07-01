.class final Lccsancom/mbridge/msdk/reward/adapter/c$l;
.super Lccsancom/mbridge/msdk/mbsignalcommon/b/b;
.source "RewardCampaignsResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/reward/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Z

.field private final c:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Lccsancom/mbridge/msdk/videocommon/a$a;

.field private final g:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;ZLjava/lang/String;)V
    .locals 0

    .line 1808
    invoke-direct {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/b/b;-><init>()V

    .line 1809
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->b:Z

    .line 1810
    iput-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->c:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 1811
    iput-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->d:Ljava/lang/String;

    .line 1812
    iput-object p5, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->e:Ljava/lang/String;

    .line 1813
    iput-object p6, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->f:Lccsancom/mbridge/msdk/videocommon/a$a;

    .line 1814
    iput-object p7, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->g:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1815
    iput-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->a:Ljava/lang/String;

    .line 1816
    iput-boolean p8, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->h:Z

    .line 1817
    iput-object p9, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->i:Ljava/lang/String;

    .line 1818
    return-void
.end method


# virtual methods
.method public final a(Lccsanandroid/webkit/WebView;I)V
    .locals 5

    .line 1823
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->k:Z

    if-nez p1, :cond_7

    .line 1824
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->c:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz p1, :cond_0

    .line 1825
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1827
    :try_start_0
    const-string v0, "id"

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1828
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1829
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1830
    const-string v1, "error"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1831
    const-string v1, "data"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1832
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->c:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const-string v2, "onSubPlayTemplateViewLoad"

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/4 v3, 0x2

    invoke-static {p1, v3}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1837
    goto :goto_0

    .line 1833
    :catch_0
    move-exception p1

    .line 1834
    sget-boolean v0, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1835
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindVaneWebView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1839
    :cond_0
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->g:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->g:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1840
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_5

    .line 1841
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V

    .line 1842
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->f:Lccsancom/mbridge/msdk/videocommon/a$a;

    if-eqz p2, :cond_1

    .line 1843
    invoke-virtual {p2, v1}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Z)V

    .line 1845
    :cond_1
    iget-boolean p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->b:Z

    if-eqz p2, :cond_3

    .line 1846
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->g:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1847
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->f:Lccsancom/mbridge/msdk/videocommon/a$a;

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->h:Z

    invoke-static {p1, p2, v2, v0}, Lccsancom/mbridge/msdk/videocommon/a;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;ZZ)V

    goto :goto_1

    .line 1849
    :cond_2
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->f:Lccsancom/mbridge/msdk/videocommon/a$a;

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->h:Z

    invoke-static {p1, p2, v2, v0}, Lccsancom/mbridge/msdk/videocommon/a;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;ZZ)V

    goto :goto_1

    .line 1852
    :cond_3
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->g:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1853
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->f:Lccsancom/mbridge/msdk/videocommon/a$a;

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->h:Z

    invoke-static {p1, p2, v2, v0}, Lccsancom/mbridge/msdk/videocommon/a;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;ZZ)V

    goto :goto_1

    .line 1855
    :cond_4
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->f:Lccsancom/mbridge/msdk/videocommon/a$a;

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->h:Z

    invoke-static {p1, p2, v2, v0}, Lccsancom/mbridge/msdk/videocommon/a;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;ZZ)V

    goto :goto_1

    .line 1860
    :cond_5
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->e:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->i:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V

    .line 1861
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->f:Lccsancom/mbridge/msdk/videocommon/a$a;

    if-eqz p1, :cond_6

    .line 1862
    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Z)V

    .line 1865
    :cond_6
    :goto_1
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->k:Z

    .line 1867
    :cond_7
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1871
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->e:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "_"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->i:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->d:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V

    .line 1872
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->f:Lccsancom/mbridge/msdk/videocommon/a$a;

    if-eqz p1, :cond_0

    .line 1873
    invoke-virtual {p1, p4}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Z)V

    .line 1875
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->c:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz p1, :cond_1

    .line 1876
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1878
    :try_start_0
    const-string p2, "id"

    iget-object p4, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, p4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1879
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1880
    const-string p4, "result"

    const/4 v0, 0x2

    invoke-virtual {p2, p4, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1881
    const-string p4, "error"

    invoke-virtual {p2, p4, p3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1882
    const-string p3, "data"

    invoke-virtual {p1, p3, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1883
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    iget-object p3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->c:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const-string p4, "onSubPlayTemplateViewLoad"

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1, v0}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p4, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1888
    goto :goto_0

    .line 1884
    :catch_0
    move-exception p1

    .line 1885
    sget-boolean p2, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_1

    .line 1886
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindVaneWebView"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1890
    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 5

    .line 1894
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->j:Z

    if-nez v0, :cond_6

    .line 1895
    const-string v0, "wfr=1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_5

    .line 1896
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->c:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    if-eqz p2, :cond_0

    .line 1897
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1899
    :try_start_0
    const-string v1, "id"

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->a:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1900
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 1901
    const-string v2, "result"

    invoke-virtual {v1, v2, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 1902
    const-string v2, "error"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1903
    const-string v2, "data"

    invoke-virtual {p2, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 1904
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->c:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    const-string v3, "componentReact"

    invoke-virtual {p2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v4, 0x2

    invoke-static {p2, v4}, Lccsanandroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, v3, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1909
    goto :goto_0

    .line 1905
    :catch_0
    move-exception p2

    .line 1906
    sget-boolean v1, Lccsancom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1907
    invoke-virtual {p2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    const-string v1, "WindVaneWebView"

    invoke-static {v1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    :cond_0
    :goto_0
    invoke-static {}, Lccsancom/mbridge/msdk/videocommon/download/i;->a()Lccsancom/mbridge/msdk/videocommon/download/i;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lccsancom/mbridge/msdk/videocommon/download/i;->d(Ljava/lang/String;Z)V

    .line 1913
    iget-object p2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->f:Lccsancom/mbridge/msdk/videocommon/a$a;

    if-eqz p2, :cond_1

    .line 1914
    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/videocommon/a$a;->a(Z)V

    .line 1916
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->e:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->g:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->g:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->d:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1917
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1918
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->g:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1919
    const/16 p2, 0x11f

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->g:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->f:Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-static {p2, v1, v2}, Lccsancom/mbridge/msdk/videocommon/a;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V

    goto :goto_1

    .line 1921
    :cond_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->f:Lccsancom/mbridge/msdk/videocommon/a$a;

    iget-boolean v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->h:Z

    invoke-static {p2, v1, v2, v3}, Lccsancom/mbridge/msdk/videocommon/a;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;ZZ)V

    goto :goto_1

    .line 1924
    :cond_3
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->g:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1925
    const/16 p2, 0x5e

    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->g:Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->f:Lccsancom/mbridge/msdk/videocommon/a$a;

    invoke-static {p2, v1, v2}, Lccsancom/mbridge/msdk/videocommon/a;->a(ILjava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;)V

    goto :goto_1

    .line 1927
    :cond_4
    iget-object v1, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->f:Lccsancom/mbridge/msdk/videocommon/a$a;

    iget-boolean v3, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->h:Z

    invoke-static {p2, v1, v2, v3}, Lccsancom/mbridge/msdk/videocommon/a;->a(Ljava/lang/String;Lccsancom/mbridge/msdk/videocommon/a$a;ZZ)V

    .line 1931
    :cond_5
    :goto_1
    invoke-static {}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a()Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/g;->a(Lccsanandroid/webkit/WebView;)V

    .line 1932
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/reward/adapter/c$l;->j:Z

    .line 1934
    :cond_6
    return-void
.end method
