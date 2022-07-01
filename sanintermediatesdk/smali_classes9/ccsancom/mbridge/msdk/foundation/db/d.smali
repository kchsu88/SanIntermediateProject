.class public Lccsancom/mbridge/msdk/foundation/db/d;
.super Lccsancom/mbridge/msdk/foundation/db/a;
.source "CampaignDao.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/mbridge/msdk/foundation/db/a<",
        "Lccsancom/mbridge/msdk/out/Campaign;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lccsancom/mbridge/msdk/foundation/db/d;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lccsancom/mbridge/msdk/foundation/db/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/db/d;->a:Ljava/lang/String;

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/db/d;->b:Lccsancom/mbridge/msdk/foundation/db/d;

    return-void
.end method

.method private constructor <init>(Lccsancom/mbridge/msdk/foundation/db/e;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/a;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    .line 31
    const-string p1, "rid"

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/db/d;->c:Ljava/lang/String;

    .line 32
    const-string p1, "cid"

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/db/d;->d:Ljava/lang/String;

    .line 33
    const-string p1, "plct"

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/db/d;->e:Ljava/lang/String;

    .line 34
    const-string p1, "plctb"

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/db/d;->f:Ljava/lang/String;

    .line 35
    const-string p1, "timestamp"

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/db/d;->g:Ljava/lang/String;

    .line 36
    const-string p1, "ridCount"

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/db/d;->h:Ljava/lang/String;

    .line 37
    const-string p1, " WHERE "

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/db/d;->i:Ljava/lang/String;

    .line 38
    const-string p1, " AND "

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/db/d;->j:Ljava/lang/String;

    .line 39
    const-string p1, "SELECT "

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/db/d;->k:Ljava/lang/String;

    .line 40
    const-string p1, "*"

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/db/d;->l:Ljava/lang/String;

    .line 41
    const-string p1, " FROM "

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/db/d;->m:Ljava/lang/String;

    .line 42
    const-string p1, " AND readyState = \'0\'"

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/db/d;->n:Ljava/lang/String;

    .line 43
    const-string p1, " AND is_bid_campaign = 1"

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/db/d;->o:Ljava/lang/String;

    .line 44
    const-string p1, " AND is_bid_campaign = 0"

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/db/d;->p:Ljava/lang/String;

    .line 45
    const-string p1, " order by ts ASC"

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/db/d;->q:Ljava/lang/String;

    .line 46
    const-string p1, " group by request_id"

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/db/d;->r:Ljava/lang/String;

    .line 47
    const-string p1, " group by bid_token"

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/db/d;->s:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private declared-synchronized a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;I)J
    .locals 5

    monitor-enter p0

    .line 660
    if-nez p1, :cond_0

    .line 661
    const-wide/16 p1, 0x0

    monitor-exit p0

    return-wide p1

    .line 663
    :cond_0
    const-wide/16 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p4, :cond_1

    .line 664
    monitor-exit p0

    return-wide v0

    .line 666
    :cond_1
    :try_start_1
    new-instance p4, Lccsanandroid/content/ContentValues;

    invoke-direct {p4}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 667
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPv_urls()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPv_urls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 668
    new-instance v2, Lccsanorg/json/JSONArray;

    invoke-direct {v2}, Lccsanorg/json/JSONArray;-><init>()V

    .line 669
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPv_urls()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 670
    invoke-virtual {v2, v4}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 671
    goto :goto_0

    .line 672
    :cond_2
    const-string v3, "pv_urls"

    invoke-virtual {v2}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v3, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    :cond_3
    const-string v2, "id"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v2, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v2, "placement_id"

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string p2, ""

    :cond_4
    invoke-virtual {p4, v2, p2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    const-string p2, "unitid"

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string p2, "tab"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTab()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 678
    const-string p2, "package_name"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string p2, "app_name"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string p2, "app_desc"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppDesc()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string p2, "app_size"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getSize()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string p2, "image_size"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageSize()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string p2, "icon_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string p2, "image_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string p2, "impression_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string p2, "notice_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const-string p2, "download_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const-string p2, "wtick"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getWtick()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 689
    const-string p2, "deeplink_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getDeepLinkURL()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    const-string p2, "user_activation"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getUserActivation()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    const-string p2, "only_impression"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string p2, "ts"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 693
    const-string p2, "template"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTemplate()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 694
    const-string p2, "click_mode"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const-string p2, "landing_type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLandingType()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-string p2, "link_type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLinkType()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 697
    const-string p2, "star"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRating()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 698
    const-string p2, "cti"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickInterval()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 699
    const-string p2, "level"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCacheLevel()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 700
    const-string p2, "adSource"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getType()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 701
    const-string p2, "ad_call"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdCall()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const-string p2, "fc_a"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFca()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    const-string p2, "fc_b"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFcb()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 704
    const-string p2, "ad_url_list"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAd_url_list()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string p2, "video_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string p2, "video_size"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoSize()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 707
    const-string p2, "video_length"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoLength()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 708
    const-string p2, "video_resolution"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string p2, "endcard_click_result"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getEndcard_click_result()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 710
    const-string p2, "watch_mile"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getWatchMile()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 711
    const-string p2, "advImp"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdvImp()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const-string p2, "bty"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBty()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 713
    const-string p2, "t_imp"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTImp()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 714
    const-string p2, "guidelines"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getGuidelines()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string p2, "offer_type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOfferType()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 716
    const-string p2, "html_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getHtmlUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string p2, "end_screen_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string p2, "reward_amount"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardAmount()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 719
    const-string p2, "reward_name"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string p2, "reward_play_status"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardPlayStatus()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 721
    const-string p2, "retarget"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRetarget_offer()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 722
    const-string p2, "native_ad_tracking"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTrackingString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string p2, "playable_ads_without_video"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 724
    const-string p2, "endcard_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    const-string p2, "video_end_type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideo_end_type()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 727
    const-string p2, "md5_file"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoMD5Value()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const-string p2, "nv_t2"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNvT2()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 729
    const-string p2, "gif_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getGifUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 732
    const-string p2, "reward_teamplate"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p3

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->a()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :cond_5
    const-string p2, "c_coi"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickTimeOutInterval()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 735
    const-string p2, "c_ua"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getcUA()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 736
    const-string p2, "imp_ua"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImpUA()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 737
    const-string p2, "jm_pd"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getJmPd()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 738
    const-string p2, "is_deleted"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIsDeleted()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 739
    const-string p2, "is_click"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIsClick()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 740
    const-string p2, "is_add_sucesful"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIsAddSuccesful()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 741
    const-string p2, "short_ctime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string p2, "ia_icon"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getKeyIaIcon()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string p2, "ia_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getKeyIaUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string p2, "ia_rst"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getKeyIaRst()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 746
    const-string p2, "ia_ori"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getKeyIaOri()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 747
    const-string p2, "ad_type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 748
    const-string p2, "ia_ext1"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIa_ext1()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string p2, "ia_ext2"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIa_ext2()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    const-string p2, "is_download_zip"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIsDownLoadZip()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 751
    const-string p2, "ia_cache"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getInteractiveCache()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    const-string p2, "oc_time"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOc_time()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 754
    const-string p2, "oc_type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOc_type()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 755
    const-string p2, "t_list"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getT_list()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdchoice()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;

    move-result-object p2

    .line 758
    if-eqz p2, :cond_6

    .line 759
    const-string p3, "adchoice"

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, p3, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string p3, "adchoice_size_height"

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, p3, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 761
    const-string p3, "adchoice_size_width"

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p4, p3, p2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 764
    :cond_6
    const-string p2, "plct"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlct()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 765
    const-string p2, "plctb"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlctb()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 766
    const-string p2, "ad_html"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdHtml()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    const-string p2, "ad_zip"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdZip()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string p2, "banner_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    const-string p2, "banner_html"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-string p2, "creative_id"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCreativeId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 772
    const-string p2, "is_bid_campaign"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 773
    const-string p2, "bid_token"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string p2, "mraid"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string p2, "is_mraid_campaign"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 777
    const-string p2, "omid"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOmid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const-string p2, "mof_tplid"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_tplid()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 780
    const-string p2, "ready_rate"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReady_rate()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 781
    const-string p2, "ext_data"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getExt_data()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string p2, "nscpt"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 783
    const-string p2, "mof_template_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string p2, "req_ext_data"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReq_ext_data()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string p2, "readyState"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReadyState()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 786
    const-string p2, "request_id"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string p2, "load_timeout"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLoadTimeoutState()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 789
    const-string p2, "maitve"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 790
    const-string p2, "maitve_src"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve_src()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string p2, "flb"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFlb()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 792
    const-string p2, "flb_skiptime"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFlbSkipTime()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p2, p1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 793
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "campaign"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, p4}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 659
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 795
    :catch_0
    move-exception p1

    .line 796
    :try_start_2
    const-string p2, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 798
    monitor-exit p0

    return-wide v0

    .line 659
    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public static declared-synchronized a(Lccsancom/mbridge/msdk/foundation/db/e;)Lccsancom/mbridge/msdk/foundation/db/d;
    .locals 2

    const-class v0, Lccsancom/mbridge/msdk/foundation/db/d;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/db/d;->b:Lccsancom/mbridge/msdk/foundation/db/d;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lccsancom/mbridge/msdk/foundation/db/d;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/foundation/db/d;-><init>(Lccsancom/mbridge/msdk/foundation/db/e;)V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/db/d;->b:Lccsancom/mbridge/msdk/foundation/db/d;

    .line 58
    :cond_0
    sget-object p0, Lccsancom/mbridge/msdk/foundation/db/d;->b:Lccsancom/mbridge/msdk/foundation/db/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 54
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Lccsanandroid/database/Cursor;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    .locals 6

    .line 2184
    nop

    .line 2185
    if-eqz p1, :cond_5

    invoke-interface {p1}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 2186
    new-instance v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;-><init>()V

    .line 2188
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "pv_urls"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2189
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2190
    new-instance v3, Lccsanorg/json/JSONArray;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2191
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2192
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3}, Lccsanorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 2193
    invoke-virtual {v3, v4}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2192
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2195
    :cond_0
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPv_urls(Ljava/util/List;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2199
    :cond_1
    goto :goto_1

    .line 2197
    :catch_0
    move-exception v2

    .line 2200
    :goto_1
    const-string v2, "id"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setId(Ljava/lang/String;)V

    .line 2201
    const-string v2, "tab"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setTab(I)V

    .line 2202
    const-string v2, "package_name"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPackageName(Ljava/lang/String;)V

    .line 2203
    const-string v2, "app_name"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAppName(Ljava/lang/String;)V

    .line 2204
    const-string v2, "app_desc"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAppDesc(Ljava/lang/String;)V

    .line 2205
    const-string v2, "app_size"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setSize(Ljava/lang/String;)V

    .line 2206
    const-string v2, "image_size"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImageSize(Ljava/lang/String;)V

    .line 2207
    const-string v2, "icon_url"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIconUrl(Ljava/lang/String;)V

    .line 2208
    const-string v2, "image_url"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImageUrl(Ljava/lang/String;)V

    .line 2209
    const-string v2, "impression_url"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImpressionURL(Ljava/lang/String;)V

    .line 2210
    const-string v2, "notice_url"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    .line 2211
    const-string v2, "download_url"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 2212
    const-string v2, "wtick"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setWtick(I)V

    .line 2213
    const-string v2, "deeplink_url"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setDeepLinkUrl(Ljava/lang/String;)V

    .line 2214
    const-string v2, "user_activation"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setUserActivation(Z)V

    .line 2215
    const-string v2, "only_impression"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOnlyImpressionURL(Ljava/lang/String;)V

    .line 2216
    const-string v2, "template"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setTemplate(I)V

    .line 2217
    const-string v2, "landing_type"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setLandingType(Ljava/lang/String;)V

    .line 2218
    const-string v2, "link_type"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setLinkType(I)V

    .line 2219
    const-string v2, "click_mode"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClick_mode(Ljava/lang/String;)V

    .line 2220
    const-string v2, "star"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRating(D)V

    .line 2221
    const-string v2, "number_rating"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNumberRating(I)V

    .line 2222
    const-string v2, "cti"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickInterval(I)V

    .line 2223
    const-string v2, "ts"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setTimestamp(J)V

    .line 2224
    const-string v2, "level"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCacheLevel(I)V

    .line 2225
    const-string v2, "ad_call"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdCall(Ljava/lang/String;)V

    .line 2226
    const-string v2, "fc_b"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setFcb(I)V

    .line 2227
    const-string v2, "ad_url_list"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAd_url_list(Ljava/lang/String;)V

    .line 2228
    const-string v2, "video_length"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoLength(I)V

    .line 2229
    const-string v2, "video_size"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoSize(I)V

    .line 2230
    const-string v2, "video_resolution"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoResolution(Ljava/lang/String;)V

    .line 2231
    const-string v2, "endcard_click_result"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setEndcard_click_result(I)V

    .line 2232
    const-string v2, "video_url"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoUrlEncode(Ljava/lang/String;)V

    .line 2233
    const-string v2, "watch_mile"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setWatchMile(I)V

    .line 2234
    const-string v2, "t_imp"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setTImp(I)V

    .line 2235
    const-string v2, "bty"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBty(I)V

    .line 2236
    const-string v2, "advImp"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdvImp(Ljava/lang/String;)V

    .line 2237
    const-string v2, "guidelines"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 2238
    const-string v3, "offer_type"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOfferType(I)V

    .line 2239
    const-string v3, "html_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setHtmlUrl(Ljava/lang/String;)V

    .line 2240
    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 2241
    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setHtmlUrl(Ljava/lang/String;)V

    .line 2242
    const-string v2, "end_screen_url"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setEndScreenUrl(Ljava/lang/String;)V

    .line 2243
    const-string v2, "reward_name"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRewardName(Ljava/lang/String;)V

    .line 2244
    const-string v2, "reward_amount"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRewardAmount(I)V

    .line 2245
    const-string v2, "reward_play_status"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRewardPlayStatus(I)V

    .line 2246
    const-string v2, "retarget"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRetarget_offer(I)V

    .line 2248
    const-string v2, "unitid"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 2250
    const-string v2, "native_ad_tracking"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->TrackingStr2Object(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v3

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNativeVideoTracking(Lccsancom/mbridge/msdk/foundation/entity/i;)V

    .line 2251
    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNativeVideoTrackingString(Ljava/lang/String;)V

    .line 2252
    const-string v2, "video_end_type"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideo_end_type(I)V

    .line 2253
    const-string v2, "endcard_url"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setendcard_url(Ljava/lang/String;)V

    .line 2254
    const-string v2, "playable_ads_without_video"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlayable_ads_without_video(I)V

    .line 2257
    nop

    .line 2259
    const-string v2, "reward_teamplate"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2258
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v2

    .line 2257
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRewardTemplateMode(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;)V

    .line 2260
    const-string v2, "md5_file"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoMD5Value(Ljava/lang/String;)V

    .line 2261
    const-string v2, "gif_url"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setGifUrl(Ljava/lang/String;)V

    .line 2262
    const-string v2, "nv_t2"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNvT2(I)V

    .line 2263
    const-string v2, "c_coi"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickTimeOutInterval(I)V

    .line 2264
    const-string v2, "c_ua"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setcUA(I)V

    .line 2265
    const-string v2, "imp_ua"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImpUA(I)V

    .line 2266
    const-string v2, "jm_pd"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setJmPd(I)V

    .line 2267
    const-string v2, "is_deleted"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsDeleted(I)V

    .line 2268
    const-string v2, "is_click"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsClick(I)V

    .line 2269
    const-string v2, "is_add_sucesful"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsAddSuccesful(I)V

    .line 2271
    const-string v2, "is_download_zip"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsDownLoadZip(I)V

    .line 2272
    const-string v2, "ia_cache"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setInteractiveCache(Ljava/lang/String;)V

    .line 2273
    const-string v2, "ia_ori"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setKeyIaOri(I)V

    .line 2274
    const-string v2, "ad_type"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdType(I)V

    .line 2275
    const-string v2, "ia_ext1"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIa_ext1(Ljava/lang/String;)V

    .line 2276
    const-string v2, "ia_ext2"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIa_ext2(Ljava/lang/String;)V

    .line 2277
    const-string v2, "ia_rst"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setKeyIaRst(I)V

    .line 2278
    const-string v2, "ia_url"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setKeyIaUrl(Ljava/lang/String;)V

    .line 2279
    const-string v2, "ia_icon"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setKeyIaIcon(Ljava/lang/String;)V

    .line 2281
    const-string v2, "oc_time"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOc_time(I)V

    .line 2282
    const-string v2, "oc_type"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOc_type(I)V

    .line 2283
    const-string v2, "t_list"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setT_list(Ljava/lang/String;)V

    .line 2285
    const-string v2, "adchoice"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2286
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2287
    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdchoice(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;)V

    .line 2289
    :cond_2
    const-string v2, "adchoice_size_height"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdchoiceSizeHeight(I)V

    .line 2290
    const-string v2, "adchoice_size_width"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdchoiceSizeWidth(I)V

    .line 2292
    const-string v2, "plct"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlct(J)V

    .line 2293
    const-string v2, "plctb"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlctb(J)V

    .line 2295
    const-string v2, "ad_zip"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdZip(Ljava/lang/String;)V

    .line 2296
    const-string v2, "ad_html"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdHtml(Ljava/lang/String;)V

    .line 2297
    const-string v2, "banner_url"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBannerUrl(Ljava/lang/String;)V

    .line 2298
    const-string v2, "banner_html"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBannerHtml(Ljava/lang/String;)V

    .line 2299
    const-string v2, "creative_id"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCreativeId(J)V

    .line 2301
    const-string v2, "is_bid_campaign"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsBidCampaign(Z)V

    .line 2302
    const-string v2, "bid_token"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBidToken(Ljava/lang/String;)V

    .line 2304
    const-string v2, "mraid"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMraid(Ljava/lang/String;)V

    .line 2305
    const-string v2, "is_mraid_campaign"

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsMraid(Z)V

    .line 2307
    const-string v1, "omid"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOmid(Ljava/lang/String;)V

    .line 2309
    const-string v1, "ready_rate"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReady_rate(I)V

    .line 2310
    const-string v1, "ext_data"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setExt_data(Ljava/lang/String;)V

    .line 2311
    const-string v1, "nscpt"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNscpt(I)V

    .line 2312
    const-string v1, "mof_template_url"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMof_template_url(Ljava/lang/String;)V

    .line 2313
    const-string v1, "mof_tplid"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMof_tplid(I)V

    .line 2314
    const-string v1, "req_ext_data"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReq_ext_data(Ljava/lang/String;)V

    .line 2315
    const-string v1, "readyState"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReadyState(I)V

    .line 2316
    const-string v1, "load_timeout"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setLoadTimeoutState(I)V

    .line 2318
    const-string v1, "placement_id"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlacementId(Ljava/lang/String;)V

    .line 2320
    const-string v1, "maitve"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMaitve(I)V

    .line 2321
    const-string v1, "maitve_src"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMaitve_src(Ljava/lang/String;)V

    .line 2322
    const-string v1, "flb"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setFlb(I)V

    .line 2323
    const-string v1, "flb_skiptime"

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setFlbSkipTime(I)V

    goto :goto_3

    .line 2325
    :cond_5
    const/4 v0, 0x0

    :goto_3
    return-object v0
.end method

.method private declared-synchronized h(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1305
    nop

    .line 1307
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1308
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1309
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1310
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1311
    if-eqz p1, :cond_7

    :try_start_3
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 1312
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1314
    :goto_0
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1315
    new-instance v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;-><init>()V

    .line 1316
    const-string v3, "pv_urls"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1317
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 1318
    new-instance v4, Lccsanorg/json/JSONArray;

    invoke-direct {v4, v3}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1319
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1320
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v4}, Lccsanorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 1321
    invoke-virtual {v4, v6}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1320
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1323
    :cond_0
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPv_urls(Ljava/util/List;)V

    .line 1325
    :cond_1
    const-string v3, "id"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setId(Ljava/lang/String;)V

    .line 1326
    const-string v3, "tab"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setTab(I)V

    .line 1327
    const-string v3, "package_name"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPackageName(Ljava/lang/String;)V

    .line 1328
    const-string v3, "app_name"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAppName(Ljava/lang/String;)V

    .line 1329
    const-string v3, "app_desc"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAppDesc(Ljava/lang/String;)V

    .line 1330
    const-string v3, "app_size"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setSize(Ljava/lang/String;)V

    .line 1331
    const-string v3, "image_size"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImageSize(Ljava/lang/String;)V

    .line 1332
    const-string v3, "icon_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIconUrl(Ljava/lang/String;)V

    .line 1333
    const-string v3, "image_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImageUrl(Ljava/lang/String;)V

    .line 1334
    const-string v3, "impression_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImpressionURL(Ljava/lang/String;)V

    .line 1335
    const-string v3, "notice_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    .line 1336
    const-string v3, "download_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 1337
    const-string v3, "wtick"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setWtick(I)V

    .line 1338
    const-string v3, "deeplink_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setDeepLinkUrl(Ljava/lang/String;)V

    .line 1339
    const-string v3, "user_activation"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setUserActivation(Z)V

    .line 1340
    const-string v3, "only_impression"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOnlyImpressionURL(Ljava/lang/String;)V

    .line 1341
    const-string v3, "template"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setTemplate(I)V

    .line 1342
    const-string v3, "landing_type"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setLandingType(Ljava/lang/String;)V

    .line 1343
    const-string v3, "link_type"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setLinkType(I)V

    .line 1344
    const-string v3, "click_mode"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClick_mode(Ljava/lang/String;)V

    .line 1345
    const-string v3, "star"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRating(D)V

    .line 1346
    const-string v3, "number_rating"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNumberRating(I)V

    .line 1347
    const-string v3, "cti"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickInterval(I)V

    .line 1348
    const-string v3, "ts"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setTimestamp(J)V

    .line 1349
    const-string v3, "level"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCacheLevel(I)V

    .line 1350
    const-string v3, "adSource"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setType(I)V

    .line 1351
    const-string v3, "ad_call"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdCall(Ljava/lang/String;)V

    .line 1352
    const-string v3, "fc_a"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setFca(I)V

    .line 1353
    const-string v3, "fc_b"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setFcb(I)V

    .line 1354
    const-string v3, "ad_url_list"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAd_url_list(Ljava/lang/String;)V

    .line 1355
    const-string v3, "video_length"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoLength(I)V

    .line 1356
    const-string v3, "video_size"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoSize(I)V

    .line 1357
    const-string v3, "video_resolution"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoResolution(Ljava/lang/String;)V

    .line 1358
    const-string v3, "endcard_click_result"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setEndcard_click_result(I)V

    .line 1359
    const-string v3, "video_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoUrlEncode(Ljava/lang/String;)V

    .line 1360
    const-string v3, "watch_mile"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setWatchMile(I)V

    .line 1361
    const-string v3, "t_imp"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setTImp(I)V

    .line 1362
    const-string v3, "bty"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBty(I)V

    .line 1363
    const-string v3, "advImp"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdvImp(Ljava/lang/String;)V

    .line 1364
    const-string v3, "offer_type"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOfferType(I)V

    .line 1365
    const-string v3, "guidelines"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 1366
    const-string v3, "html_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setHtmlUrl(Ljava/lang/String;)V

    .line 1367
    const-string v3, "end_screen_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setEndScreenUrl(Ljava/lang/String;)V

    .line 1368
    const-string v3, "reward_name"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRewardName(Ljava/lang/String;)V

    .line 1369
    const-string v3, "reward_amount"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRewardAmount(I)V

    .line 1370
    const-string v3, "reward_play_status"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRewardPlayStatus(I)V

    .line 1372
    const-string v3, "retarget"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRetarget_offer(I)V

    .line 1373
    const-string v3, "unitid"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 1374
    const-string v3, "native_ad_tracking"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->TrackingStr2Object(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNativeVideoTracking(Lccsancom/mbridge/msdk/foundation/entity/i;)V

    .line 1375
    const-string v3, "native_ad_tracking"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNativeVideoTrackingString(Ljava/lang/String;)V

    .line 1376
    const-string v3, "video_end_type"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideo_end_type(I)V

    .line 1377
    const-string v3, "endcard_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setendcard_url(Ljava/lang/String;)V

    .line 1378
    const-string v3, "playable_ads_without_video"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlayable_ads_without_video(I)V

    .line 1380
    const-string v3, "reward_teamplate"

    .line 1382
    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1381
    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v3

    .line 1380
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRewardTemplateMode(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;)V

    .line 1383
    const-string v3, "md5_file"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoMD5Value(Ljava/lang/String;)V

    .line 1384
    const-string v3, "gif_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setGifUrl(Ljava/lang/String;)V

    .line 1385
    const-string v3, "nv_t2"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNvT2(I)V

    .line 1386
    const-string v3, "c_coi"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickTimeOutInterval(I)V

    .line 1387
    const-string v3, "c_ua"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setcUA(I)V

    .line 1388
    const-string v3, "imp_ua"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImpUA(I)V

    .line 1390
    const-string v3, "oc_time"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOc_time(I)V

    .line 1391
    const-string v3, "oc_type"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOc_type(I)V

    .line 1392
    const-string v3, "t_list"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setT_list(Ljava/lang/String;)V

    .line 1394
    const-string v3, "adchoice"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1395
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1396
    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdchoice(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;)V

    .line 1398
    :cond_2
    const-string v3, "adchoice_size_height"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdchoiceSizeHeight(I)V

    .line 1399
    const-string v3, "adchoice_size_width"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdchoiceSizeWidth(I)V

    .line 1401
    const-string v3, "plct"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlct(J)V

    .line 1402
    const-string v3, "plctb"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlctb(J)V

    .line 1404
    const-string v3, "ad_zip"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdZip(Ljava/lang/String;)V

    .line 1405
    const-string v3, "ad_html"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdHtml(Ljava/lang/String;)V

    .line 1406
    const-string v3, "banner_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBannerUrl(Ljava/lang/String;)V

    .line 1407
    const-string v3, "banner_html"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBannerHtml(Ljava/lang/String;)V

    .line 1408
    const-string v3, "creative_id"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCreativeId(J)V

    .line 1410
    const-string v3, "is_bid_campaign"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsBidCampaign(Z)V

    .line 1411
    const-string v3, "bid_token"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBidToken(Ljava/lang/String;)V

    .line 1413
    const-string v3, "ad_type"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdType(I)V

    .line 1415
    const-string v3, "mraid"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMraid(Ljava/lang/String;)V

    .line 1416
    const-string v3, "is_mraid_campaign"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_4

    const/4 v5, 0x1

    :cond_4
    invoke-virtual {v2, v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsMraid(Z)V

    .line 1417
    const-string v3, "omid"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOmid(Ljava/lang/String;)V

    .line 1419
    const-string v3, "ready_rate"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReady_rate(I)V

    .line 1420
    const-string v3, "ext_data"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setExt_data(Ljava/lang/String;)V

    .line 1421
    const-string v3, "nscpt"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNscpt(I)V

    .line 1422
    const-string v3, "mof_template_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMof_template_url(Ljava/lang/String;)V

    .line 1423
    const-string v3, "mof_tplid"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMof_tplid(I)V

    .line 1424
    const-string v3, "req_ext_data"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReq_ext_data(Ljava/lang/String;)V

    .line 1425
    const-string v3, "readyState"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReadyState(I)V

    .line 1426
    const-string v3, "load_timeout"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setLoadTimeoutState(I)V

    .line 1428
    const-string v3, "placement_id"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlacementId(Ljava/lang/String;)V

    .line 1430
    const-string v3, "maitve"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMaitve(I)V

    .line 1431
    const-string v3, "maitve_src"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMaitve_src(Ljava/lang/String;)V

    .line 1432
    const-string v3, "flb"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setFlb(I)V

    .line 1433
    const-string v3, "flb_skiptime"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setFlbSkipTime(I)V

    .line 1434
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1435
    goto/16 :goto_0

    .line 1437
    :cond_5
    nop

    .line 1442
    if-eqz p1, :cond_6

    .line 1443
    :try_start_4
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 1437
    :cond_6
    monitor-exit p0

    return-object v1

    .line 1442
    :cond_7
    if-eqz p1, :cond_8

    .line 1443
    goto :goto_5

    .line 1310
    :catchall_0
    move-exception v2

    move-object p1, v0

    :goto_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1439
    :catch_0
    move-exception v1

    goto :goto_4

    .line 1310
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 1442
    :catchall_2
    move-exception p1

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_6

    .line 1439
    :catch_1
    move-exception v1

    move-object p1, v0

    .line 1440
    :goto_4
    :try_start_7
    const-string v2, "CampaignDao"

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1442
    if-eqz p1, :cond_8

    .line 1443
    :goto_5
    :try_start_8
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 1446
    :cond_8
    monitor-exit p0

    return-object v0

    .line 1442
    :catchall_3
    move-exception v0

    :goto_6
    if-eqz p1, :cond_9

    .line 1443
    :try_start_9
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V

    .line 1445
    :cond_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 1304
    :catchall_4
    move-exception p1

    monitor-exit p0

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method private i(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 1940
    nop

    .line 1942
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 1943
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1944
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1945
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1946
    if-eqz p1, :cond_7

    :try_start_3
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_7

    .line 1947
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1949
    :goto_0
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1950
    new-instance v2, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;-><init>()V

    .line 1951
    const-string v3, "pv_urls"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1952
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 1953
    new-instance v4, Lccsanorg/json/JSONArray;

    invoke-direct {v4, v3}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1954
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1955
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v4}, Lccsanorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    .line 1956
    invoke-virtual {v4, v6}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1955
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1958
    :cond_0
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPv_urls(Ljava/util/List;)V

    .line 1960
    :cond_1
    const-string v3, "unitid"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 1961
    const-string v3, "id"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setId(Ljava/lang/String;)V

    .line 1962
    const-string v3, "tab"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setTab(I)V

    .line 1963
    const-string v3, "package_name"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPackageName(Ljava/lang/String;)V

    .line 1964
    const-string v3, "app_name"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAppName(Ljava/lang/String;)V

    .line 1965
    const-string v3, "app_desc"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAppDesc(Ljava/lang/String;)V

    .line 1966
    const-string v3, "app_size"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setSize(Ljava/lang/String;)V

    .line 1967
    const-string v3, "image_size"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImageSize(Ljava/lang/String;)V

    .line 1968
    const-string v3, "icon_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIconUrl(Ljava/lang/String;)V

    .line 1969
    const-string v3, "image_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImageUrl(Ljava/lang/String;)V

    .line 1970
    const-string v3, "impression_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImpressionURL(Ljava/lang/String;)V

    .line 1971
    const-string v3, "notice_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNoticeUrl(Ljava/lang/String;)V

    .line 1972
    const-string v3, "download_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickURL(Ljava/lang/String;)V

    .line 1973
    const-string v3, "wtick"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setWtick(I)V

    .line 1974
    const-string v3, "deeplink_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setDeepLinkUrl(Ljava/lang/String;)V

    .line 1975
    const-string v3, "user_activation"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setUserActivation(Z)V

    .line 1976
    const-string v3, "only_impression"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOnlyImpressionURL(Ljava/lang/String;)V

    .line 1977
    const-string v3, "template"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setTemplate(I)V

    .line 1978
    const-string v3, "landing_type"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setLandingType(Ljava/lang/String;)V

    .line 1979
    const-string v3, "link_type"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setLinkType(I)V

    .line 1980
    const-string v3, "click_mode"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClick_mode(Ljava/lang/String;)V

    .line 1981
    const-string v3, "star"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRating(D)V

    .line 1982
    const-string v3, "number_rating"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNumberRating(I)V

    .line 1983
    const-string v3, "cti"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickInterval(I)V

    .line 1984
    const-string v3, "ts"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setTimestamp(J)V

    .line 1985
    const-string v3, "level"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCacheLevel(I)V

    .line 1986
    const-string v3, "ad_call"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdCall(Ljava/lang/String;)V

    .line 1987
    const-string v3, "fc_a"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setFca(I)V

    .line 1988
    const-string v3, "fc_b"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setFcb(I)V

    .line 1989
    const-string v3, "ad_url_list"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAd_url_list(Ljava/lang/String;)V

    .line 1990
    const-string v3, "video_length"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoLength(I)V

    .line 1991
    const-string v3, "video_size"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoSize(I)V

    .line 1992
    const-string v3, "video_resolution"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoResolution(Ljava/lang/String;)V

    .line 1993
    const-string v3, "endcard_click_result"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setEndcard_click_result(I)V

    .line 1995
    const-string v3, "video_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoUrlEncode(Ljava/lang/String;)V

    .line 1996
    const-string v3, "watch_mile"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setWatchMile(I)V

    .line 1997
    const-string v3, "t_imp"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setTImp(I)V

    .line 1998
    const-string v3, "bty"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBty(I)V

    .line 1999
    const-string v3, "advImp"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdvImp(Ljava/lang/String;)V

    .line 2000
    const-string v3, "guidelines"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 2001
    const-string v3, "offer_type"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOfferType(I)V

    .line 2002
    const-string v3, "html_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setHtmlUrl(Ljava/lang/String;)V

    .line 2003
    const-string v3, "guidelines"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setGuidelines(Ljava/lang/String;)V

    .line 2004
    const-string v3, "html_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setHtmlUrl(Ljava/lang/String;)V

    .line 2005
    const-string v3, "end_screen_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setEndScreenUrl(Ljava/lang/String;)V

    .line 2006
    const-string v3, "reward_name"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRewardName(Ljava/lang/String;)V

    .line 2007
    const-string v3, "reward_amount"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRewardAmount(I)V

    .line 2008
    const-string v3, "reward_play_status"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRewardPlayStatus(I)V

    .line 2009
    const-string v3, "retarget"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRetarget_offer(I)V

    .line 2011
    const-string v3, "unitid"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCampaignUnitId(Ljava/lang/String;)V

    .line 2013
    const-string v3, "native_ad_tracking"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->TrackingStr2Object(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/i;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNativeVideoTracking(Lccsancom/mbridge/msdk/foundation/entity/i;)V

    .line 2014
    const-string v3, "native_ad_tracking"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNativeVideoTrackingString(Ljava/lang/String;)V

    .line 2015
    const-string v3, "video_end_type"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideo_end_type(I)V

    .line 2016
    const-string v3, "endcard_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setendcard_url(Ljava/lang/String;)V

    .line 2017
    const-string v3, "playable_ads_without_video"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlayable_ads_without_video(I)V

    .line 2018
    const-string v3, "reward_teamplate"

    .line 2020
    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2019
    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v3

    .line 2018
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setRewardTemplateMode(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;)V

    .line 2021
    const-string v3, "md5_file"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setVideoMD5Value(Ljava/lang/String;)V

    .line 2022
    const-string v3, "gif_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setGifUrl(Ljava/lang/String;)V

    .line 2023
    const-string v3, "nv_t2"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNvT2(I)V

    .line 2024
    const-string v3, "c_coi"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setClickTimeOutInterval(I)V

    .line 2025
    const-string v3, "c_ua"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setcUA(I)V

    .line 2026
    const-string v3, "imp_ua"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setImpUA(I)V

    .line 2027
    const-string v3, "is_deleted"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsDeleted(I)V

    .line 2028
    const-string v3, "is_click"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsClick(I)V

    .line 2029
    const-string v3, "is_add_sucesful"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsAddSuccesful(I)V

    .line 2030
    const-string v3, "ia_ori"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setKeyIaOri(I)V

    .line 2031
    const-string v3, "ad_type"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdType(I)V

    .line 2032
    const-string v3, "ia_ext1"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIa_ext1(Ljava/lang/String;)V

    .line 2033
    const-string v3, "ia_ext2"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIa_ext2(Ljava/lang/String;)V

    .line 2034
    const-string v3, "ia_rst"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setKeyIaRst(I)V

    .line 2035
    const-string v3, "ia_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setKeyIaUrl(Ljava/lang/String;)V

    .line 2036
    const-string v3, "ia_icon"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setKeyIaIcon(Ljava/lang/String;)V

    .line 2037
    const-string v3, "is_download_zip"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsDownLoadZip(I)V

    .line 2038
    const-string v3, "ia_cache"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setInteractiveCache(Ljava/lang/String;)V

    .line 2040
    const-string v3, "oc_time"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOc_time(I)V

    .line 2041
    const-string v3, "oc_type"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOc_type(I)V

    .line 2042
    const-string v3, "t_list"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setT_list(Ljava/lang/String;)V

    .line 2044
    const-string v3, "adchoice"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2045
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2046
    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->a(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdchoice(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;)V

    .line 2048
    :cond_2
    const-string v3, "adchoice_size_height"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdchoiceSizeHeight(I)V

    .line 2049
    const-string v3, "adchoice_size_width"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdchoiceSizeWidth(I)V

    .line 2051
    const-string v3, "plct"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlct(J)V

    .line 2052
    const-string v3, "plctb"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlctb(J)V

    .line 2053
    const-string v3, "ad_zip"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdZip(Ljava/lang/String;)V

    .line 2054
    const-string v3, "ad_html"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdHtml(Ljava/lang/String;)V

    .line 2056
    const-string v3, "banner_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBannerUrl(Ljava/lang/String;)V

    .line 2057
    const-string v3, "banner_html"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBannerHtml(Ljava/lang/String;)V

    .line 2058
    const-string v3, "creative_id"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setCreativeId(J)V

    .line 2060
    const-string v3, "is_bid_campaign"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsBidCampaign(Z)V

    .line 2061
    const-string v3, "bid_token"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setBidToken(Ljava/lang/String;)V

    .line 2063
    const-string v3, "mraid"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMraid(Ljava/lang/String;)V

    .line 2064
    const-string v3, "is_mraid_campaign"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v4, :cond_4

    const/4 v5, 0x1

    :cond_4
    invoke-virtual {v2, v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIsMraid(Z)V

    .line 2066
    const-string v3, "omid"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setOmid(Ljava/lang/String;)V

    .line 2067
    const-string v3, "ready_rate"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReady_rate(I)V

    .line 2068
    const-string v3, "ext_data"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setExt_data(Ljava/lang/String;)V

    .line 2069
    const-string v3, "nscpt"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNscpt(I)V

    .line 2070
    const-string v3, "mof_template_url"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMof_template_url(Ljava/lang/String;)V

    .line 2071
    const-string v3, "mof_tplid"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMof_tplid(I)V

    .line 2072
    const-string v3, "req_ext_data"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReq_ext_data(Ljava/lang/String;)V

    .line 2073
    const-string v3, "readyState"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReadyState(I)V

    .line 2074
    const-string v3, "load_timeout"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setLoadTimeoutState(I)V

    .line 2076
    const-string v3, "placement_id"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPlacementId(Ljava/lang/String;)V

    .line 2078
    const-string v3, "maitve"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMaitve(I)V

    .line 2079
    const-string v3, "maitve_src"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMaitve_src(Ljava/lang/String;)V

    .line 2080
    const-string v3, "flb"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setFlb(I)V

    .line 2081
    const-string v3, "flb_skiptime"

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setFlbSkipTime(I)V

    .line 2082
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2083
    goto/16 :goto_0

    .line 2085
    :cond_5
    nop

    .line 2090
    if-eqz p1, :cond_6

    .line 2091
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V

    .line 2085
    :cond_6
    return-object v1

    .line 2090
    :cond_7
    if-eqz p1, :cond_8

    .line 2091
    goto :goto_5

    .line 1945
    :catchall_0
    move-exception v2

    move-object p1, v0

    :goto_3
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2087
    :catch_0
    move-exception v1

    goto :goto_4

    .line 1945
    :catchall_1
    move-exception v2

    goto :goto_3

    .line 2090
    :catchall_2
    move-exception p1

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_6

    .line 2087
    :catch_1
    move-exception v1

    move-object p1, v0

    .line 2088
    :goto_4
    :try_start_6
    const-string v2, "CampaignDao"

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2090
    if-eqz p1, :cond_8

    .line 2091
    :goto_5
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V

    .line 2094
    :cond_8
    return-object v0

    .line 2090
    :catchall_3
    move-exception v0

    :goto_6
    if-eqz p1, :cond_9

    .line 2091
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V

    .line 2093
    :cond_9
    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;J)I
    .locals 9

    monitor-enter p0

    .line 1177
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/b/b;->b(Ljava/lang/String;)Lccsancom/mbridge/msdk/b/a;

    move-result-object v1

    .line 1178
    if-nez v1, :cond_0

    .line 1179
    invoke-static {}, Lccsancom/mbridge/msdk/b/b;->a()Lccsancom/mbridge/msdk/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/b;->b()Lccsancom/mbridge/msdk/b/a;

    move-result-object v1

    .line 1181
    :cond_0
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/b/a;->p()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 1182
    invoke-virtual {p0, v1, v2, p1}, Lccsancom/mbridge/msdk/foundation/db/d;->a(JLjava/lang/String;)V

    .line 1183
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;IIIZ)Ljava/util/List;

    move-result-object p1

    .line 1184
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1187
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 1188
    invoke-virtual {v3, p2, p3, v1, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isSpareOffer(JJ)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 1189
    monitor-exit p0

    return v0

    .line 1191
    :cond_2
    goto :goto_0

    .line 1192
    :cond_3
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 1185
    :cond_4
    :goto_1
    const/4 p1, -0x1

    monitor-exit p0

    return p1

    .line 1176
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 1195
    :catch_0
    move-exception p1

    .line 1198
    monitor-exit p0

    return v0
.end method

.method public final declared-synchronized a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)J
    .locals 12

    monitor-enter p0

    .line 803
    if-nez p1, :cond_0

    .line 804
    const-wide/16 p1, 0x0

    monitor-exit p0

    return-wide p1

    .line 806
    :cond_0
    const-wide/16 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 807
    monitor-exit p0

    return-wide v0

    .line 809
    :cond_1
    :try_start_1
    new-instance v2, Lccsanandroid/content/ContentValues;

    invoke-direct {v2}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 810
    const-string v3, "id"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPv_urls()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPv_urls()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 812
    new-instance v3, Lccsanorg/json/JSONArray;

    invoke-direct {v3}, Lccsanorg/json/JSONArray;-><init>()V

    .line 813
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPv_urls()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 814
    invoke-virtual {v3, v5}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 815
    goto :goto_0

    .line 816
    :cond_2
    const-string v4, "pv_urls"

    invoke-virtual {v3}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    :cond_3
    const-string v3, "unitid"

    invoke-virtual {v2, v3, p2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const-string v3, "request_id"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    const-string v3, "tab"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTab()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 821
    const-string v3, "package_name"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v3, "app_name"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v3, "app_desc"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v3, "app_size"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string v3, "image_size"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    const-string v3, "icon_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    const-string v3, "image_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const-string v3, "impression_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    const-string v3, "notice_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v3, "download_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string v3, "wtick"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getWtick()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 832
    const-string v3, "deeplink_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getDeepLinkURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v3, "user_activation"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getUserActivation()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    const-string v3, "only_impression"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v3, "ts"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTimestamp()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 836
    const-string v3, "template"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTemplate()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 837
    const-string v3, "click_mode"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    const-string v3, "landing_type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLandingType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const-string v3, "link_type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLinkType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 840
    const-string v3, "star"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRating()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 841
    const-string v3, "cti"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickInterval()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 842
    const-string v3, "level"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCacheLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 843
    const-string v3, "adSource"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 844
    const-string v3, "ad_call"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdCall()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-string v3, "fc_a"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFca()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 846
    const-string v3, "fc_b"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFcb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 847
    const-string v3, "ad_url_list"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAd_url_list()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const-string v3, "video_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string v3, "video_size"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 850
    const-string v3, "video_length"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 851
    const-string v3, "video_resolution"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string v3, "endcard_click_result"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getEndcard_click_result()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 853
    const-string v3, "watch_mile"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getWatchMile()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 854
    const-string v3, "advImp"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdvImp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v3, "bty"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBty()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 856
    const-string v3, "t_imp"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTImp()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 857
    const-string v3, "guidelines"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getGuidelines()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v3, "offer_type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOfferType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 859
    const-string v3, "html_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getHtmlUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const-string v3, "end_screen_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v3, "reward_amount"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardAmount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 862
    const-string v3, "reward_name"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v3, "reward_play_status"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardPlayStatus()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 864
    const-string v3, "retarget"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRetarget_offer()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 865
    const-string v3, "native_ad_tracking"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTrackingString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const-string v3, "playable_ads_without_video"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 867
    const-string v3, "endcard_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const-string v3, "video_end_type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideo_end_type()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 869
    const-string v3, "md5_file"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoMD5Value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v3, "nv_t2"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNvT2()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 871
    const-string v3, "gif_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getGifUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 874
    const-string v3, "reward_teamplate"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :cond_4
    const-string v3, "c_coi"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickTimeOutInterval()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 877
    const-string v3, "c_ua"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getcUA()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 878
    const-string v3, "imp_ua"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImpUA()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 879
    const-string v3, "jm_pd"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getJmPd()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 880
    const-string v3, "is_deleted"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIsDeleted()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 881
    const-string v3, "is_click"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIsClick()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 882
    const-string v3, "is_add_sucesful"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIsAddSuccesful()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 883
    const-string v3, "short_ctime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const-string v3, "ia_icon"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getKeyIaIcon()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string v3, "ia_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getKeyIaUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const-string v3, "ia_rst"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getKeyIaRst()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 888
    const-string v3, "ia_ori"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getKeyIaOri()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 889
    const-string v3, "ad_type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 890
    const-string v3, "ia_ext1"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIa_ext1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    const-string v3, "ia_ext2"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIa_ext2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v3, "is_download_zip"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIsDownLoadZip()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 893
    const-string v3, "ia_cache"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getInteractiveCache()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v3, "oc_time"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOc_time()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 896
    const-string v3, "oc_type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOc_type()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 897
    const-string v3, "t_list"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getT_list()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdchoice()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;

    move-result-object v3

    .line 900
    if-eqz v3, :cond_5

    .line 901
    const-string v4, "adchoice"

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string v4, "adchoice_size_height"

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 903
    const-string v4, "adchoice_size_width"

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 906
    :cond_5
    const-string v3, "plct"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlct()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 907
    const-string v3, "plctb"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlctb()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 908
    const-string v3, "ad_html"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdHtml()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const-string v3, "ad_zip"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdZip()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const-string v3, "banner_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const-string v3, "banner_html"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const-string v3, "creative_id"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCreativeId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 914
    const-string v3, "is_bid_campaign"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 915
    const-string v3, "bid_token"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const-string v3, "mraid"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const-string v3, "is_mraid_campaign"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 919
    const-string v3, "omid"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOmid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const-string v3, "mof_tplid"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_tplid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 922
    const-string v3, "ready_rate"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReady_rate()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 923
    const-string v3, "ext_data"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getExt_data()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    const-string v3, "nscpt"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 925
    const-string v3, "mof_template_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v3, "req_ext_data"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReq_ext_data()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const-string v3, "readyState"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReadyState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 928
    const-string v3, "load_timeout"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLoadTimeoutState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 930
    const-string v3, "placement_id"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlacementId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v3, "maitve"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 933
    const-string v3, "maitve_src"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve_src()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const-string v3, "flb"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFlb()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 935
    const-string v3, "flb_skiptime"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFlbSkipTime()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 937
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTab()I

    move-result v7

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getType()I

    move-result v10

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v11

    move-object v5, p0

    move-object v8, p2

    move v9, p3

    invoke-virtual/range {v5 .. v11}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    move-result p3

    const/4 v3, 0x0

    if-eqz p3, :cond_7

    .line 939
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 940
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "unitid = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "is_bid_campaign"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = 1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 942
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id = "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "unitid"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is_bid_campaign"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 945
    :goto_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "campaign"

    invoke-virtual {p2, p3, v2, p1, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long p1, p1

    monitor-exit p0

    return-wide p1

    .line 947
    :cond_7
    :try_start_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "campaign"

    invoke-virtual {p1, p2, v3, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 802
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 950
    :catch_0
    move-exception p1

    .line 951
    :try_start_3
    const-string p2, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 953
    monitor-exit p0

    return-wide v0

    .line 802
    :goto_2
    monitor-exit p0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final a(Ljava/lang/String;III)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 1239
    nop

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " WHERE unitid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "level"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " AND "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "adSource"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1242
    nop

    .line 1243
    if-lez p2, :cond_0

    .line 1244
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " LIMIT "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1243
    :cond_0
    const-string p2, ""

    .line 1246
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SELECT * FROM campaign"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1248
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/d;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;IIILjava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1272
    nop

    .line 1273
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " WHERE unitid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "level"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "adSource"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1276
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND is_bid_campaign = 1"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1277
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND readyState = \'0\'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1278
    invoke-static {p5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 1279
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND request_id = \'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1281
    :cond_0
    const-string p3, ""

    .line 1282
    if-lez p2, :cond_1

    .line 1283
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " LIMIT "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1285
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " order by ts ASC"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1286
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SELECT * FROM campaign"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1288
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/d;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1271
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;IIIZ)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1252
    nop

    .line 1253
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " WHERE unitid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "level"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "adSource"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1255
    if-eqz p5, :cond_0

    .line 1256
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND is_bid_campaign = 1"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1258
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND is_bid_campaign = 0"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1260
    :goto_0
    const-string p3, ""

    .line 1261
    if-lez p2, :cond_1

    .line 1262
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " LIMIT "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1264
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SELECT * FROM campaign"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1266
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/d;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1251
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lccsanorg/json/JSONArray;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/json/JSONArray;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 1910
    const-string v0, " = \'"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1911
    return-object v1

    .line 1913
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1914
    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "unitid"

    .line 1915
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1916
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1917
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "\' AND ("

    .line 1918
    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1919
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-ge p2, v3, :cond_2

    .line 1920
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONArray;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1921
    if-eqz p2, :cond_1

    .line 1922
    const-string v4, " or "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1924
    :cond_1
    const-string v4, "id"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1925
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1926
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, "\'"

    .line 1927
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1919
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1929
    :cond_2
    const-string p1, " )"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1930
    sget-object p1, Lccsancom/mbridge/msdk/foundation/db/d;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tabWhereSb : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SELECT * FROM campaign"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "ia_cache"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = \'onelevel\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1932
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/d;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 1933
    :catchall_0
    move-exception p1

    .line 1934
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CampaignDao"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    return-object v1
.end method

.method public final declared-synchronized a()V
    .locals 4

    monitor-enter p0

    .line 592
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    sub-long/2addr v0, v2

    .line 593
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ts<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " AND "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ts"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 595
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "campaign"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    :cond_0
    goto :goto_0

    .line 591
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 598
    :catch_0
    move-exception v0

    .line 599
    :try_start_1
    const-string v1, "CampaignDao"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    :goto_0
    monitor-exit p0

    return-void

    .line 591
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(JLjava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 616
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 617
    sub-long p1, v0, p1

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(plctb>0 and (plctb* 1000+ts)<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") or ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "plctb"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ts"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") and "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "unitid"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=?"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 623
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    aput-object p3, p2, v0

    .line 624
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 625
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const-string v0, "campaign"

    invoke-virtual {p3, v0, p1, p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    :cond_0
    goto :goto_0

    .line 615
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 627
    :catch_0
    move-exception p1

    .line 628
    :try_start_1
    sget-object p2, Lccsancom/mbridge/msdk/foundation/db/d;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 630
    :goto_0
    monitor-exit p0

    return-void

    .line 615
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 282
    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 283
    monitor-exit p0

    return-void

    .line 287
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    const-string v1, "unitid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "readyState"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 290
    if-eqz p1, :cond_1

    .line 291
    const-string v1, "campaign"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    :cond_1
    goto :goto_0

    .line 293
    :catch_0
    move-exception p1

    .line 294
    :try_start_2
    const-string v0, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    :goto_0
    monitor-exit p0

    return-void

    .line 281
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    .line 462
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unitid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ia_rst"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 463
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 464
    monitor-exit p0

    return-void

    .line 466
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v0, "campaign"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    goto :goto_0

    .line 461
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 467
    :catch_0
    move-exception p1

    .line 468
    :try_start_2
    const-string p2, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 470
    :goto_0
    monitor-exit p0

    return-void

    .line 461
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;II)V
    .locals 2

    monitor-enter p0

    .line 63
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unitid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "level"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "adSource"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 66
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "campaign"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 69
    :catch_0
    move-exception p1

    .line 70
    :try_start_2
    const-string p2, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    :goto_0
    monitor-exit p0

    return-void

    .line 62
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;IIZ)V
    .locals 2

    monitor-enter p0

    .line 76
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unitid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "level"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "adSource"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND is_bid_campaign = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 80
    monitor-exit p0

    return-void

    .line 82
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "campaign"

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p1, p4}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    goto :goto_1

    .line 75
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 83
    :catch_0
    move-exception p1

    .line 84
    :try_start_2
    const-string p2, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    :goto_1
    monitor-exit p0

    return-void

    .line 75
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;IZ)V
    .locals 1

    monitor-enter p0

    .line 443
    nop

    .line 444
    if-eqz p3, :cond_0

    .line 445
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "placement_id = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ad_type"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 447
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ad_type = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 450
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 451
    monitor-exit p0

    return-void

    .line 454
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "campaign"

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 457
    goto :goto_1

    .line 455
    :catch_0
    move-exception p1

    .line 456
    :try_start_2
    const-string p2, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 458
    :goto_1
    monitor-exit p0

    return-void

    .line 442
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 259
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "unitid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 261
    monitor-exit p0

    return-void

    .line 263
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v0, "campaign"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    goto :goto_0

    .line 258
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 264
    :catch_0
    move-exception p1

    .line 265
    :try_start_2
    const-string p2, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    :goto_0
    monitor-exit p0

    return-void

    .line 258
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 2

    monitor-enter p0

    .line 401
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "unitid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "level"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "adSource"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 403
    if-eqz p5, :cond_0

    .line 404
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND is_bid_campaign = 1"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 406
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND is_bid_campaign = 0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 408
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 409
    monitor-exit p0

    return-void

    .line 411
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "campaign"

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p1, p4}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    goto :goto_1

    .line 400
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 412
    :catch_0
    move-exception p1

    .line 413
    :try_start_2
    const-string p2, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    :goto_1
    monitor-exit p0

    return-void

    .line 400
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 347
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "unitid"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is_bid_campaign"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    if-eqz p3, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "request_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 349
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 350
    monitor-exit p0

    return-void

    .line 352
    :cond_1
    :try_start_1
    new-instance p2, Lccsanandroid/content/ContentValues;

    invoke-direct {p2}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 353
    const-string p3, "readyState"

    const/4 p4, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 354
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const-string p4, "campaign"

    const/4 v0, 0x0

    invoke-virtual {p3, p4, p2, p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    goto :goto_1

    .line 346
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 355
    :catch_0
    move-exception p1

    .line 356
    :try_start_2
    const-string p2, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 358
    :goto_1
    monitor-exit p0

    return-void

    .line 346
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 120
    if-eqz p2, :cond_2

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 121
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 122
    new-instance v1, Lccsanandroid/content/ContentValues;

    invoke-direct {v1}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 123
    const-string v2, "readyState"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "unitid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "request_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND is_bid_campaign = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 129
    if-eqz v2, :cond_1

    .line 130
    const-string v3, "campaign"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Lccsanandroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :cond_1
    goto :goto_2

    .line 132
    :catch_0
    move-exception v0

    .line 133
    :try_start_2
    const-string v1, "CampaignDao"

    invoke-virtual {v0}, Lccsanandroid/database/SQLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :goto_2
    goto/16 :goto_0

    .line 119
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 137
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    monitor-enter p0

    .line 167
    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 168
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 170
    if-nez v0, :cond_0

    .line 171
    monitor-exit p0

    return-void

    .line 174
    :cond_0
    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 175
    if-eqz v1, :cond_1

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unitid = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "request_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    new-instance v2, Lccsanandroid/content/ContentValues;

    invoke-direct {v2}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 178
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    const-string v3, "campaign"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v1, v4}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :cond_1
    goto :goto_0

    .line 184
    :catchall_0
    move-exception p1

    .line 185
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 182
    :catch_0
    move-exception p1

    .line 187
    :cond_2
    monitor-exit p0

    return-void

    .line 166
    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 190
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 191
    if-nez v0, :cond_0

    .line 192
    monitor-exit p0

    return-void

    .line 195
    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    :try_start_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 196
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    :try_start_2
    new-instance v2, Lccsanandroid/content/ContentValues;

    invoke-direct {v2}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 199
    const-string v3, "readyState"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unitid = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "request_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    if-eqz p4, :cond_1

    .line 202
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "is_bid_campaign"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = 1"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 204
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "is_bid_campaign"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = 0"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    :goto_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "campaign"

    invoke-virtual {v3, v4, v2, v1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    goto :goto_2

    .line 207
    :catch_0
    move-exception v1

    .line 208
    :try_start_3
    const-string v2, "CampaignDao"

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_2
    goto/16 :goto_0

    .line 235
    :catchall_0
    move-exception p1

    goto/16 :goto_7

    .line 233
    :catch_1
    move-exception p1

    goto/16 :goto_6

    .line 212
    :cond_2
    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 213
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    :try_start_4
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLoadTimeoutState()I

    move-result v1

    if-nez v1, :cond_4

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    const-string v2, "unitid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "request_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    if-eqz p4, :cond_3

    .line 219
    const-string p3, " AND is_bid_campaign = 1"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 221
    :cond_3
    const-string p3, " AND is_bid_campaign = 0"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :goto_4
    new-instance p3, Lccsanandroid/content/ContentValues;

    invoke-direct {p3}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 224
    const-string v2, "readyState"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "campaign"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, p3, v1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Lccsanandroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 229
    :cond_4
    goto :goto_5

    .line 227
    :catch_2
    move-exception p3

    .line 228
    :try_start_5
    const-string v1, "CampaignDao"

    invoke-virtual {p3}, Lccsanandroid/database/SQLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 230
    :goto_5
    goto/16 :goto_3

    .line 234
    :goto_6
    :try_start_6
    const-string p2, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    .line 236
    :goto_7
    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_5
    :goto_8
    nop

    .line 237
    monitor-exit p0

    return-void

    .line 189
    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 141
    if-eqz p2, :cond_2

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 142
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :try_start_1
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLoadTimeoutState()I

    move-result v1

    if-nez v1, :cond_1

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    const-string v2, "unitid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "request_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    if-eqz p3, :cond_0

    .line 148
    const-string v0, " AND is_bid_campaign = 1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 150
    :cond_0
    const-string v0, " AND is_bid_campaign = 0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :goto_1
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 153
    const-string v2, "readyState"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 155
    if-eqz v2, :cond_1

    .line 156
    const-string v3, "campaign"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Lccsanandroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    :cond_1
    goto :goto_2

    .line 159
    :catch_0
    move-exception v0

    .line 160
    :try_start_2
    const-string v1, "CampaignDao"

    invoke-virtual {v0}, Lccsanandroid/database/SQLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 162
    :goto_2
    goto/16 :goto_0

    .line 140
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 164
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 327
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 328
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    const-string v2, "unitid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "request_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 333
    const-string v2, "readyState"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 334
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 335
    if-eqz v2, :cond_0

    .line 336
    const-string v3, "campaign"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Lccsanandroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    :cond_0
    goto :goto_1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    :try_start_2
    const-string v1, "CampaignDao"

    invoke-virtual {v0}, Lccsanandroid/database/SQLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    :goto_1
    goto :goto_0

    .line 326
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 343
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    monitor-enter p0

    .line 646
    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 649
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 650
    monitor-exit p0

    return-void

    .line 653
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 654
    invoke-direct {p0, v0, p2, p3, p4}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;Ljava/lang/String;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    goto :goto_0

    .line 656
    :cond_2
    monitor-exit p0

    return-void

    .line 645
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 647
    :cond_3
    :goto_1
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;ILjava/lang/String;IIZ)Z
    .locals 1

    monitor-enter p0

    .line 1216
    :try_start_0
    const-string v0, "SELECT id FROM campaign WHERE "

    .line 1217
    if-eqz p6, :cond_0

    .line 1218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "unitid = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "is_bid_campaign"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = 1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1220
    :cond_0
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "id=\'"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "tab"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "unitid"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = \'"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "level"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "adSource"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is_bid_campaign"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = 0"

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1226
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1

    .line 1227
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lccsanandroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_1

    .line 1228
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1229
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 1231
    :cond_1
    if-eqz p1, :cond_2

    .line 1232
    :try_start_1
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1234
    :cond_2
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 1215
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;I)J
    .locals 4

    monitor-enter p0

    .line 958
    if-nez p1, :cond_0

    .line 959
    const-wide/16 p1, 0x0

    monitor-exit p0

    return-wide p1

    .line 961
    :cond_0
    const-wide/16 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_1

    .line 962
    monitor-exit p0

    return-wide v0

    .line 964
    :cond_1
    :try_start_1
    new-instance p3, Lccsanandroid/content/ContentValues;

    invoke-direct {p3}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 965
    const-string v2, "id"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    const-string v2, "unitid"

    invoke-virtual {p3, v2, p2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPv_urls()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPv_urls()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 968
    new-instance p2, Lccsanorg/json/JSONArray;

    invoke-direct {p2}, Lccsanorg/json/JSONArray;-><init>()V

    .line 969
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPv_urls()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 970
    invoke-virtual {p2, v3}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 971
    goto :goto_0

    .line 972
    :cond_2
    const-string v2, "pv_urls"

    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v2, p2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    :cond_3
    const-string p2, "tab"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTab()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 975
    const-string p2, "package_name"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    const-string p2, "app_name"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    const-string p2, "app_desc"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAppDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    const-string p2, "app_size"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    const-string p2, "image_size"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    const-string p2, "icon_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const-string p2, "image_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    const-string p2, "impression_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImpressionURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    const-string p2, "notice_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNoticeUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const-string p2, "download_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-string p2, "wtick"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getWtick()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 986
    const-string p2, "deeplink_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getDeepLinkURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string p2, "user_activation"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getUserActivation()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const-string p2, "only_impression"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOnlyImpressionURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string p2, "ts"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 990
    const-string p2, "template"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTemplate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 991
    const-string p2, "click_mode"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClick_mode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const-string p2, "landing_type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLandingType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    const-string p2, "link_type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLinkType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 994
    const-string p2, "star"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRating()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 995
    const-string p2, "cti"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickInterval()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 996
    const-string p2, "level"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCacheLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 997
    const-string p2, "adSource"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 998
    const-string p2, "ad_call"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdCall()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    const-string p2, "fc_a"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFca()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1000
    const-string p2, "fc_b"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFcb()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1001
    const-string p2, "ad_url_list"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAd_url_list()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    const-string p2, "video_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoUrlEncode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    const-string p2, "video_size"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1004
    const-string p2, "video_length"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1005
    const-string p2, "video_resolution"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoResolution()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const-string p2, "endcard_click_result"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getEndcard_click_result()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1007
    const-string p2, "watch_mile"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getWatchMile()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1008
    const-string p2, "advImp"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdvImp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string p2, "bty"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBty()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1010
    const-string p2, "t_imp"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getTImp()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1011
    const-string p2, "guidelines"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getGuidelines()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    const-string p2, "offer_type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOfferType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1013
    const-string p2, "html_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getHtmlUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const-string p2, "end_screen_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getEndScreenUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    const-string p2, "reward_amount"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardAmount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1016
    const-string p2, "reward_name"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const-string p2, "reward_play_status"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardPlayStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1019
    const-string p2, "retarget"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRetarget_offer()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1020
    const-string p2, "native_ad_tracking"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNativeVideoTrackingString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    const-string p2, "playable_ads_without_video"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlayable_ads_without_video()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1022
    const-string p2, "endcard_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getendcard_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const-string p2, "video_end_type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideo_end_type()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1024
    const-string p2, "md5_file"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getVideoMD5Value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    const-string p2, "nv_t2"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNvT2()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1026
    const-string p2, "gif_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getGifUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1029
    const-string p2, "reward_teamplate"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRewardTemplateMode()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    :cond_4
    const-string p2, "c_coi"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getClickTimeOutInterval()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1032
    const-string p2, "c_ua"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getcUA()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1033
    const-string p2, "imp_ua"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getImpUA()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1034
    const-string p2, "jm_pd"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getJmPd()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1035
    const-string p2, "is_deleted"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIsDeleted()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1036
    const-string p2, "is_click"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIsClick()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1037
    const-string p2, "is_add_sucesful"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIsAddSuccesful()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1038
    const-string p2, "short_ctime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const-string p2, "ia_icon"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getKeyIaIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    const-string p2, "ia_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getKeyIaUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string p2, "ia_rst"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getKeyIaRst()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1043
    const-string p2, "ia_ori"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getKeyIaOri()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1044
    const-string p2, "ad_type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1045
    const-string p2, "ia_ext1"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIa_ext1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    const-string p2, "ia_ext2"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIa_ext2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const-string p2, "is_download_zip"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getIsDownLoadZip()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1048
    const-string p2, "ia_cache"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getInteractiveCache()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string p2, "oc_type"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOc_type()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1051
    const-string p2, "oc_time"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOc_time()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1052
    const-string p2, "t_list"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getT_list()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getAdchoice()Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;

    move-result-object p2

    .line 1055
    if-eqz p2, :cond_5

    .line 1056
    const-string v2, "adchoice"

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const-string v2, "adchoice_size_height"

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1058
    const-string v2, "adchoice_size_width"

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx$a;->a()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, v2, p2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1061
    :cond_5
    const-string p2, "plct"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlct()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1062
    const-string p2, "plctb"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlctb()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1064
    const-string p2, "banner_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    const-string p2, "banner_html"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBannerHtml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    const-string p2, "creative_id"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getCreativeId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1068
    const-string p2, "is_bid_campaign"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1069
    const-string p2, "bid_token"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const-string p2, "mraid"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMraid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const-string p2, "is_mraid_campaign"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->isMraid()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1073
    const-string p2, "omid"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getOmid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    const-string p2, "mof_tplid"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_tplid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1076
    const-string p2, "ready_rate"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReady_rate()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1077
    const-string p2, "ext_data"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getExt_data()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    const-string p2, "nscpt"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getNscpt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1080
    const-string p2, "mof_template_url"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMof_template_url()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    const-string p2, "req_ext_data"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReq_ext_data()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    const-string p2, "readyState"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getReadyState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1083
    const-string p2, "request_id"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const-string p2, "load_timeout"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getLoadTimeoutState()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1086
    const-string p2, "placement_id"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    const-string p2, "maitve"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1089
    const-string p2, "maitve_src"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getMaitve_src()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    const-string p2, "flb"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFlb()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1091
    const-string p2, "flb_skiptime"

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getFlbSkipTime()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1092
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string p2, "campaign"

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, p3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/ContentValues;)J

    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 957
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1094
    :catch_0
    move-exception p1

    .line 1095
    :try_start_2
    const-string p2, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1097
    monitor-exit p0

    return-wide v0

    .line 957
    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 300
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SELECT * FROM "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    const-string v2, "campaign"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string v2, "unitid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "readyState"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1

    .line 304
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lccsanandroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 305
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 306
    :goto_0
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsanandroid/database/Cursor;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    :cond_0
    if-eqz p1, :cond_1

    .line 310
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    :cond_1
    monitor-exit p0

    return-object v1

    .line 314
    :cond_2
    if-eqz p1, :cond_3

    .line 315
    :try_start_1
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    :cond_3
    monitor-exit p0

    return-object v0

    .line 321
    :catchall_0
    move-exception p1

    .line 322
    monitor-exit p0

    return-object v0

    .line 319
    :catch_0
    move-exception p1

    .line 320
    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;III)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1293
    nop

    .line 1294
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " WHERE unitid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "level"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "adSource"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1296
    const-string p3, ""

    .line 1297
    if-lez p2, :cond_0

    .line 1298
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, " LIMIT "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1300
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SELECT * FROM campaign"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1302
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/d;->h(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1292
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Ljava/lang/String;IZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 2429
    nop

    .line 2430
    nop

    .line 2432
    nop

    .line 2433
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 2434
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placement_id = "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ad_type"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2436
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ad_type = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2438
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SELECT * FROM campaign WHERE "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2439
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2440
    if-eqz p1, :cond_2

    :try_start_1
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_2

    .line 2441
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2442
    :goto_1
    :try_start_2
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2443
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsanandroid/database/Cursor;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 2442
    :cond_1
    move-object v0, p2

    goto :goto_2

    .line 2446
    :catch_0
    move-exception p3

    move-object v0, p1

    move-object p1, p3

    goto :goto_3

    .line 2449
    :catchall_0
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    goto :goto_5

    .line 2446
    :catch_1
    move-exception p2

    move-object v2, v0

    move-object v0, p1

    move-object p1, p2

    move-object p2, v2

    goto :goto_3

    .line 2449
    :cond_2
    :goto_2
    if-eqz p1, :cond_4

    .line 2450
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V

    goto :goto_4

    .line 2446
    :catch_2
    move-exception p1

    move-object p2, v0

    .line 2447
    :goto_3
    :try_start_3
    const-string p3, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2449
    if-eqz v0, :cond_3

    .line 2450
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 2453
    :cond_3
    move-object v0, p2

    :cond_4
    :goto_4
    return-object v0

    .line 2449
    :catchall_1
    move-exception p1

    :goto_5
    if-eqz v0, :cond_5

    .line 2450
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 2452
    :cond_5
    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public final declared-synchronized b(JLjava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 634
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 635
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ts<"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " and "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "unitid"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "=?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 636
    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    .line 637
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 638
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const-string v0, "campaign"

    invoke-virtual {p3, v0, p1, p2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    :cond_0
    goto :goto_0

    .line 633
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 640
    :catch_0
    move-exception p1

    .line 641
    :try_start_1
    const-string p2, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    :goto_0
    monitor-exit p0

    return-void

    .line 633
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 374
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 375
    monitor-exit p0

    return-void

    .line 377
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "request_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 378
    new-instance p2, Lccsanandroid/content/ContentValues;

    invoke-direct {p2}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 379
    const-string v0, "readyState"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "campaign"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    goto :goto_0

    .line 373
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 381
    :catch_0
    move-exception p1

    .line 382
    :try_start_2
    const-string p2, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 384
    :goto_0
    monitor-exit p0

    return-void

    .line 373
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 240
    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 241
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :try_start_1
    new-instance v1, Lccsanandroid/content/ContentValues;

    invoke-direct {v1}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 244
    const-string v2, "readyState"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 246
    if-eqz v2, :cond_0

    .line 247
    const-string v3, "campaign"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unitid = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "request_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    :cond_0
    goto :goto_1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    :try_start_2
    const-string v1, "CampaignDao"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    :goto_1
    goto :goto_0

    .line 239
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 254
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 1102
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1106
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/db/d$1;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/db/d$1;-><init>(Lccsancom/mbridge/msdk/foundation/db/d;Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1115
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    monitor-exit p0

    return-void

    .line 1101
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 1103
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized c(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 431
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unitid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 432
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 433
    monitor-exit p0

    return-void

    .line 435
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "campaign"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    goto :goto_0

    .line 430
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 436
    :catch_0
    move-exception p1

    .line 437
    :try_start_2
    const-string v0, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 439
    :goto_0
    monitor-exit p0

    return-void

    .line 430
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 474
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unitid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "ia_ext1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 475
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 476
    monitor-exit p0

    return-void

    .line 478
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v0, "campaign"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    goto :goto_0

    .line 473
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 479
    :catch_0
    move-exception p1

    .line 480
    :try_start_2
    const-string p2, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 482
    :goto_0
    monitor-exit p0

    return-void

    .line 473
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 1142
    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1146
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lccsancom/mbridge/msdk/foundation/db/d$2;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/foundation/db/d$2;-><init>(Lccsancom/mbridge/msdk/foundation/db/d;Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1155
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1158
    monitor-exit p0

    return-void

    .line 1141
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 1143
    :cond_1
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1657
    nop

    .line 1658
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, " AND is_bid_campaign = 1"

    const-string v2, "unitid = \'"

    const-string v3, "\'"

    if-nez v0, :cond_0

    .line 1659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "request_id"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1663
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1666
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND readyState = \'0\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1667
    const/4 p2, 0x0

    .line 1669
    :try_start_0
    new-instance v0, Lccsanandroid/content/ContentValues;

    invoke-direct {v0}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 1670
    const-string v1, "readyState"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1671
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "campaign"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, p1, v3}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1674
    goto :goto_1

    .line 1672
    :catch_0
    move-exception p1

    .line 1673
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CampaignDao"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    :goto_1
    return p2
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1202
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE campaign SET is_download_zip=\'1\' WHERE ia_url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Lccsanandroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1208
    goto :goto_0

    .line 1206
    :catch_0
    move-exception p1

    .line 1207
    :try_start_2
    const-string v0, "CampaignDao"

    invoke-virtual {p1}, Lccsanandroid/database/SQLException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1209
    :goto_0
    monitor-exit p0

    return-void

    .line 1201
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final e(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/b;",
            ">;"
        }
    .end annotation

    .line 1612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1613
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1614
    return-object v0

    .line 1616
    :cond_0
    nop

    .line 1617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " WHERE unitid = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "level"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "adSource"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND is_bid_campaign = 1"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND readyState = \'0\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " group by request_id"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " order by ts ASC"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT request_id as rid ,count(*) as ridCount FROM campaign"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1627
    nop

    .line 1629
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1630
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1631
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 1632
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1633
    if-eqz v1, :cond_2

    :try_start_2
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 1634
    :goto_0
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1635
    new-instance p1, Lccsancom/mbridge/msdk/foundation/entity/b;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/foundation/entity/b;-><init>()V

    .line 1636
    const-string v2, "rid"

    invoke-interface {v1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1637
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1638
    goto :goto_0

    .line 1640
    :cond_1
    const-string v3, "ridCount"

    invoke-interface {v1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Lccsanandroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1641
    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/foundation/entity/b;->a(Ljava/lang/String;)V

    .line 1642
    invoke-virtual {p1, v3}, Lccsancom/mbridge/msdk/foundation/entity/b;->a(I)V

    .line 1643
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1644
    goto :goto_0

    .line 1649
    :cond_2
    if-eqz v1, :cond_3

    .line 1650
    goto :goto_1

    .line 1632
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1649
    :catchall_1
    move-exception p1

    goto :goto_2

    .line 1646
    :catch_0
    move-exception p1

    .line 1647
    :try_start_5
    const-string v2, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1649
    if-eqz v1, :cond_3

    .line 1650
    :goto_1
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 1653
    :cond_3
    return-object v0

    .line 1649
    :goto_2
    if-eqz v1, :cond_4

    .line 1650
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 1652
    :cond_4
    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 2373
    nop

    .line 2374
    nop

    .line 2376
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT * FROM campaign where bid_token =\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' and "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "unitid"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " =\'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2377
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2378
    if-eqz p1, :cond_1

    :try_start_1
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_1

    .line 2379
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2380
    :goto_0
    :try_start_2
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2381
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/d;->a(Lccsanandroid/database/Cursor;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 2380
    :cond_0
    move-object v0, p2

    goto :goto_1

    .line 2384
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception p2

    move-object v3, v0

    move-object v0, p2

    move-object p2, v3

    goto :goto_2

    .line 2387
    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    .line 2388
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V

    goto :goto_3

    .line 2387
    :catchall_0
    move-exception p2

    goto :goto_4

    .line 2384
    :catch_2
    move-exception p1

    move-object p2, v0

    move-object v0, p1

    move-object p1, p2

    .line 2385
    :goto_2
    :try_start_3
    const-string v1, "CampaignDao"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2387
    if-eqz p1, :cond_2

    .line 2388
    invoke-interface {p1}, Lccsanandroid/database/Cursor;->close()V

    .line 2391
    :cond_2
    move-object v0, p2

    :cond_3
    :goto_3
    return-object v0

    .line 2387
    :catchall_1
    move-exception p2

    move-object v0, p1

    :goto_4
    if-eqz v0, :cond_4

    .line 2388
    invoke-interface {v0}, Lccsanandroid/database/Cursor;->close()V

    .line 2390
    :cond_4
    goto :goto_6

    :goto_5
    throw p2

    :goto_6
    goto :goto_5
.end method

.method public final f(Ljava/lang/String;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lccsancom/mbridge/msdk/foundation/entity/b;",
            ">;"
        }
    .end annotation

    .line 1679
    nop

    .line 1680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " WHERE unitid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "level"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "adSource"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND is_bid_campaign = 1"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND readyState = \'0\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT request_id as rid, id as cid, plct as plct, plctb as plctb, ts as timestamp FROM campaign"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1693
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 1694
    nop

    .line 1696
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1697
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1698
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getReadableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lccsanandroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Lccsanandroid/database/Cursor;

    move-result-object v1

    .line 1699
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1700
    if-eqz v1, :cond_2

    :try_start_2
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_2

    .line 1701
    :goto_0
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1703
    const-string p1, "rid"

    invoke-interface {v1, p1}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v1, p1}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1704
    const-string v2, "cid"

    invoke-interface {v1, v2}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lccsanandroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1705
    const-string v3, "plct"

    invoke-interface {v1, v3}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1706
    const-string v5, "plctb"

    invoke-interface {v1, v5}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1707
    const-string v7, "timestamp"

    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Lccsanandroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1708
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1709
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/foundation/entity/b;

    .line 1710
    if-eqz p1, :cond_1

    .line 1711
    invoke-virtual {p1, v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/b;->a(J)V

    .line 1712
    invoke-virtual {p1, v5, v6}, Lccsancom/mbridge/msdk/foundation/entity/b;->b(J)V

    .line 1713
    invoke-virtual {p1, v7, v8}, Lccsancom/mbridge/msdk/foundation/entity/b;->c(J)V

    .line 1714
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/b;->b()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1715
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/entity/b;->b()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1719
    :cond_0
    new-instance v9, Lccsancom/mbridge/msdk/foundation/entity/b;

    invoke-direct {v9}, Lccsancom/mbridge/msdk/foundation/entity/b;-><init>()V

    .line 1720
    invoke-virtual {v9, v3, v4}, Lccsancom/mbridge/msdk/foundation/entity/b;->a(J)V

    .line 1721
    invoke-virtual {v9, v5, v6}, Lccsancom/mbridge/msdk/foundation/entity/b;->b(J)V

    .line 1722
    invoke-virtual {v9, v7, v8}, Lccsancom/mbridge/msdk/foundation/entity/b;->c(J)V

    .line 1723
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1724
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1725
    invoke-virtual {v9, v3}, Lccsancom/mbridge/msdk/foundation/entity/b;->a(Ljava/util/List;)V

    .line 1726
    invoke-virtual {v0, p1, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1728
    :cond_1
    :goto_1
    goto :goto_0

    .line 1733
    :cond_2
    if-eqz v1, :cond_3

    .line 1734
    goto :goto_2

    .line 1699
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1733
    :catchall_1
    move-exception p1

    goto :goto_3

    .line 1730
    :catch_0
    move-exception p1

    .line 1731
    :try_start_5
    const-string v2, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1733
    if-eqz v1, :cond_3

    .line 1734
    :goto_2
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 1737
    :cond_3
    return-object v0

    .line 1733
    :goto_3
    if-eqz v1, :cond_4

    .line 1734
    invoke-interface {v1}, Lccsanandroid/database/Cursor;->close()V

    .line 1736
    :cond_4
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final declared-synchronized f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 2397
    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2398
    monitor-exit p0

    return-void

    .line 2400
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unitid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2401
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND bid_token != \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2404
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND is_bid_campaign = 1"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2405
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND bid_token IS NOT NULL"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2406
    new-instance p2, Lccsanandroid/content/ContentValues;

    invoke-direct {p2}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 2407
    const-string v0, "readyState"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2408
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "campaign"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2411
    goto :goto_0

    .line 2396
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2409
    :catch_0
    move-exception p1

    .line 2410
    :try_start_2
    const-string p2, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2412
    :goto_0
    monitor-exit p0

    return-void

    .line 2396
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final g(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 1903
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " WHERE unitid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT * FROM campaign"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1905
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/foundation/db/d;->i(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 2416
    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2419
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unitid = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "bid_token"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "bid_token"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " IS NOT NULL"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2420
    new-instance p2, Lccsanandroid/content/ContentValues;

    invoke-direct {p2}, Lccsanandroid/content/ContentValues;-><init>()V

    .line 2421
    const-string v0, "readyState"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lccsanandroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2422
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/db/d;->getWritableDatabase()Lccsanandroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "campaign"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Lccsanandroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Lccsanandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2425
    goto :goto_1

    .line 2417
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 2415
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 2423
    :catch_0
    move-exception p1

    .line 2424
    :try_start_1
    const-string p2, "CampaignDao"

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2426
    :goto_1
    monitor-exit p0

    return-void

    .line 2415
    :goto_2
    monitor-exit p0

    throw p1
.end method
