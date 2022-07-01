.class public Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;
.super Ljava/lang/Object;
.source "CampaignUnit.java"

# interfaces
.implements Lccsancom/mbridge/msdk/system/NoProGuard;
.implements Ljava/io/Serializable;


# static fields
.field public static final JSON_KEY_ADS:Ljava/lang/String; = "ads"

.field public static final JSON_KEY_AD_HTML:Ljava/lang/String; = "cam_html"

.field public static final JSON_KEY_AD_TYPE:Ljava/lang/String; = "ad_type"

.field public static final JSON_KEY_AD_ZIP:Ljava/lang/String; = "cam_tpl_url"

.field public static final JSON_KEY_BANNER_HTML:Ljava/lang/String; = "cam_html"

.field public static final JSON_KEY_BANNER_URL:Ljava/lang/String; = "cam_tpl_url"

.field public static final JSON_KEY_CSP:Ljava/lang/String; = "csp"

.field public static final JSON_KEY_DO:Ljava/lang/String; = "do"

.field public static final JSON_KEY_END_SCREEN_URL:Ljava/lang/String; = "end_screen_url"

.field public static final JSON_KEY_FRAME_ADS:Ljava/lang/String; = "frames"

.field public static final JSON_KEY_HTML_URL:Ljava/lang/String; = "html_url"

.field public static final JSON_KEY_IA_EXT1:Ljava/lang/String; = "ia_all_ext1"

.field public static final JSON_KEY_IA_EXT2:Ljava/lang/String; = "ia_all_ext2"

.field public static final JSON_KEY_IA_ICON:Ljava/lang/String; = "ia_icon"

.field public static final JSON_KEY_IA_ORI:Ljava/lang/String; = "ia_ori"

.field public static final JSON_KEY_IA_RST:Ljava/lang/String; = "ia_rst"

.field public static final JSON_KEY_IA_URL:Ljava/lang/String; = "ia_url"

.field public static final JSON_KEY_JM_DO:Ljava/lang/String; = "jm_do"

.field public static final JSON_KEY_MOF_TEMPLATE_URL:Ljava/lang/String; = "mof_template_url"

.field public static final JSON_KEY_MOF_TPLID:Ljava/lang/String; = "mof_tplid"

.field public static final JSON_KEY_NSCPT:Ljava/lang/String; = "nscpt"

.field public static final JSON_KEY_ONLY_IMPRESSION_URL:Ljava/lang/String; = "only_impression_url"

.field public static final JSON_KEY_PARENT_SESSION_ID:Ljava/lang/String; = "parent_session_id"

.field public static final JSON_KEY_PV_URLS:Ljava/lang/String; = "pv_urls"

.field public static final JSON_KEY_REPLACE_TMP:Ljava/lang/String; = "replace_tmp"

.field public static final JSON_KEY_REQ_EXT_DATA:Ljava/lang/String; = "req_ext_data"

.field public static final JSON_KEY_RKS:Ljava/lang/String; = "rks"

.field public static final JSON_KEY_SESSION_ID:Ljava/lang/String; = "a"

.field public static final JSON_KEY_SH:Ljava/lang/String; = "sh"

.field public static final JSON_KEY_TEMPLATE:Ljava/lang/String; = "template"

.field public static final JSON_KEY_UNIT_SIZE:Ljava/lang/String; = "unit_size"

.field public static final JSON_KEY_VCN:Ljava/lang/String; = "vcn"

.field private static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private adHtml:Ljava/lang/String;

.field private adType:I

.field private adZip:Ljava/lang/String;

.field public ads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation
.end field

.field private bannerHtml:Ljava/lang/String;

.field private bannerUrl:Ljava/lang/String;

.field private cParams:Ljava/lang/StringBuffer;

.field private csp:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field private htmlUrl:Ljava/lang/String;

.field private ia_all_ext1:Ljava/lang/String;

.field private ia_all_ext2:Ljava/lang/String;

.field private ia_icon:Ljava/lang/String;

.field private ia_ori:I

.field private ia_rst:I

.field private ia_url:Ljava/lang/String;

.field private jmDo:I

.field private listFrames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Frame;",
            ">;"
        }
    .end annotation
.end field

.field private msg:Ljava/lang/String;

.field private onlyImpressionUrl:Ljava/lang/String;

.field private parentSessionId:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field private rks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sessionId:Ljava/lang/String;

.field private sh:Ljava/lang/String;

.field private template:I

.field private unitSize:Ljava/lang/String;

.field private vcn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->msg:Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->cParams:Ljava/lang/StringBuffer;

    return-void
.end method

.method private static getSysIDAndBKUPID(Lccsanorg/json/JSONObject;)V
    .locals 7

    .line 406
    const-string v0, "c"

    const-string v1, "b"

    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    .line 407
    if-eqz p0, :cond_1

    if-eqz v2, :cond_1

    .line 408
    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 409
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x0

    const-string v6, "H+tU+FeXHM=="

    if-nez v4, :cond_0

    :try_start_1
    sget-object v4, Lccsancom/mbridge/msdk/foundation/same/a;->k:Ljava/lang/String;

    invoke-static {v4, v3}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 410
    sput-object v3, Lccsancom/mbridge/msdk/foundation/same/a;->k:Ljava/lang/String;

    .line 411
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object v3

    sget-object v4, Lccsancom/mbridge/msdk/foundation/same/a;->k:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    nop

    .line 413
    invoke-static {v6}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-virtual {v2, v1, v5}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object v1

    .line 414
    if-eqz v1, :cond_0

    .line 415
    invoke-interface {v1}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 416
    const-string v3, "H+tU+bfPhM=="

    invoke-static {v3}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lccsancom/mbridge/msdk/foundation/same/a;->k:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Lccsanandroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/SharedPreferences$Editor;

    .line 417
    invoke-interface {v1}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V

    .line 420
    :cond_0
    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 421
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-static {v1, p0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 422
    sput-object p0, Lccsancom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    .line 423
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a()Lccsancom/mbridge/msdk/foundation/a/a/a;

    move-result-object p0

    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/foundation/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    nop

    .line 425
    invoke-static {v6}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 424
    invoke-virtual {v2, p0, v5}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object p0

    .line 426
    if-eqz p0, :cond_1

    .line 427
    invoke-interface {p0}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 428
    const-string v0, "H+tU+Fz8"

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/tools/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lccsancom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lccsanandroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/SharedPreferences$Editor;

    .line 429
    invoke-interface {p0}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 435
    :cond_1
    goto :goto_0

    .line 433
    :catch_0
    move-exception p0

    .line 434
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 436
    :goto_0
    return-void
.end method

.method private nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 328
    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public static parseCampaignUnit(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;
    .locals 1

    .line 381
    const-string v0, ""

    invoke-static {p0, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->parseCampaignUnit(Lccsanorg/json/JSONObject;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    move-result-object p0

    return-object p0
.end method

.method public static parseCampaignUnit(Lccsanorg/json/JSONObject;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;
    .locals 36

    .line 438
    move-object/from16 v0, p0

    const-string v1, "ads"

    const-string v2, "template"

    const-string v3, "ad_type"

    const-string v4, "parent_session_id"

    const-string v5, "a"

    const-string v6, ""

    const-string v7, "only_impression_url"

    const-string v8, "html_url"

    .line 439
    nop

    .line 440
    nop

    .line 442
    if-eqz v0, :cond_c

    .line 443
    :try_start_0
    new-instance v15, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    invoke-direct {v15}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    .line 444
    :try_start_1
    const-string v10, "rks"

    invoke-virtual {v0, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 445
    invoke-static {v10}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a

    if-nez v11, :cond_1

    .line 446
    :try_start_2
    new-instance v11, Lccsanorg/json/JSONObject;

    invoke-direct {v11, v10}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v11}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 448
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 449
    :goto_0
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 450
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 451
    invoke-virtual {v11, v13}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 452
    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {v15, v12}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->setRks(Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 553
    :catch_0
    move-exception v0

    move-object v9, v15

    goto/16 :goto_c

    .line 457
    :cond_1
    :goto_1
    :try_start_3
    const-string v10, "req_ext_data"

    invoke-virtual {v0, v10}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v10

    .line 459
    const-string v11, "nscpt"

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v12}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 460
    const-string v11, "mof_template_url"

    invoke-virtual {v0, v11, v6}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 461
    const-string v11, "mof_tplid"

    const/4 v9, 0x0

    invoke-virtual {v0, v11, v9}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    .line 462
    nop

    .line 463
    if-eqz v10, :cond_2

    .line 464
    :try_start_4
    invoke-virtual {v10}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 466
    :cond_2
    :try_start_5
    new-instance v10, Lccsanorg/json/JSONArray;

    invoke-direct {v10}, Lccsanorg/json/JSONArray;-><init>()V

    .line 467
    const-string v10, "pv_urls"

    invoke-virtual {v0, v10}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v10
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    .line 468
    nop

    .line 469
    if-eqz v10, :cond_3

    :try_start_6
    invoke-virtual {v10}, Lccsanorg/json/JSONArray;->length()I

    move-result v17

    if-lez v17, :cond_3

    .line 470
    new-instance v9, Ljava/util/ArrayList;

    invoke-virtual {v10}, Lccsanorg/json/JSONArray;->length()I

    move-result v12

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 471
    const/4 v12, 0x0

    :goto_2
    move/from16 v19, v11

    invoke-virtual {v10}, Lccsanorg/json/JSONArray;->length()I

    move-result v11

    if-ge v12, v11, :cond_4

    .line 472
    invoke-virtual {v10, v12}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 471
    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v19

    goto :goto_2

    .line 469
    :cond_3
    move/from16 v19, v11

    .line 476
    const/4 v9, 0x0

    :cond_4
    :try_start_7
    const-string v10, "replace_tmp"

    invoke-virtual {v0, v10}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v10

    .line 477
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/db/a/a;->a()Lccsancom/mbridge/msdk/foundation/db/a/a;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v10, v12}, Lccsancom/mbridge/msdk/foundation/db/a/a;->a(Lccsanorg/json/JSONObject;Z)V

    .line 479
    invoke-static/range {p0 .. p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getSysIDAndBKUPID(Lccsanorg/json/JSONObject;)V

    .line 480
    invoke-virtual {v0, v5}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->setSessionId(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v0, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->setParentSessionId(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v15, v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->setAdType(I)V

    .line 483
    const-string v10, "unit_size"

    invoke-virtual {v0, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->setUnitSize(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v0, v8}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->setHtmlUrl(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0, v7}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->setOnlyImpressionUrl(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v15, v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->setTemplate(I)V

    .line 487
    const-string v10, "jm_do"

    invoke-virtual {v0, v10}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v15, v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->setJmDo(I)V

    .line 488
    const-string v10, "ia_icon"

    invoke-virtual {v0, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->setIa_icon(Ljava/lang/String;)V

    .line 489
    const-string v10, "ia_rst"

    invoke-virtual {v0, v10}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v15, v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->setIa_rst(I)V

    .line 490
    const-string v10, "ia_url"

    invoke-virtual {v0, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->setIa_url(Ljava/lang/String;)V

    .line 491
    const-string v10, "ia_ori"

    invoke-virtual {v0, v10}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v15, v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->setIa_ori(I)V

    .line 492
    const-string v10, "ia_all_ext1"

    invoke-virtual {v0, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->setIa_all_ext1(Ljava/lang/String;)V

    .line 493
    const-string v10, "ia_all_ext2"

    invoke-virtual {v0, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->setIa_all_ext2(Ljava/lang/String;)V

    .line 494
    const-string v10, "vcn"

    invoke-virtual {v0, v10}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v15, v10}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->setVcn(I)V

    .line 496
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v12

    .line 497
    const-string v10, "frames"

    invoke-virtual {v0, v10}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v11
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    .line 498
    const-string v10, "web env is not support"

    move/from16 v18, v14

    const-string v14, "end_screen_url"

    if-eqz v11, :cond_8

    :try_start_8
    invoke-virtual {v11}, Lccsanorg/json/JSONArray;->length()I

    move-result v16

    if-lez v16, :cond_8

    .line 499
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 500
    move-object/from16 v20, v2

    const/4 v2, 0x0

    :goto_3
    move-object/from16 v16, v10

    invoke-virtual {v11}, Lccsanorg/json/JSONArray;->length()I

    move-result v10

    if-ge v2, v10, :cond_7

    .line 501
    invoke-virtual {v11, v2}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v10

    .line 502
    move/from16 v21, v2

    invoke-virtual {v10, v1}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 503
    move-object/from16 v22, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 504
    move-object/from16 v23, v5

    const/4 v5, 0x0

    :goto_4
    move-object/from16 v24, v10

    invoke-virtual {v2}, Lccsanorg/json/JSONArray;->length()I

    move-result v10

    if-ge v5, v10, :cond_6

    .line 505
    invoke-virtual {v2, v5}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v10

    .line 506
    invoke-virtual {v0, v7}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual {v0, v8}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual {v0, v14}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    const/16 v28, 0x0

    move-object/from16 v30, v16

    move-object/from16 v29, v24

    move/from16 v31, v19

    move-object/from16 v19, v11

    move-object/from16 v11, v25

    move-object/from16 v32, v12

    move-object/from16 v12, v26

    move-object/from16 v24, v2

    move-object v2, v13

    move-object/from16 v13, v27

    move-object/from16 v25, v8

    move-object/from16 v33, v14

    move/from16 v8, v18

    move/from16 v14, v28

    move-object/from16 v18, v15

    move-object/from16 v16, p1

    :try_start_9
    invoke-static/range {v10 .. v16}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaign(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v10
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 507
    if-eqz v10, :cond_5

    .line 508
    :try_start_a
    invoke-virtual/range {v18 .. v18}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getIa_url()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setKeyIaUrl(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {v18 .. v18}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getIa_ori()I

    move-result v11

    invoke-virtual {v10, v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setKeyIaOri(I)V

    .line 510
    invoke-virtual/range {v18 .. v18}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getIa_rst()I

    move-result v11

    invoke-virtual {v10, v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setKeyIaRst(I)V

    .line 511
    invoke-virtual/range {v18 .. v18}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getIa_icon()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setKeyIaIcon(Ljava/lang/String;)V

    .line 512
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setAdType(I)V

    .line 513
    const-string v11, "ia_ext1"

    invoke-virtual {v0, v11}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIa_ext1(Ljava/lang/String;)V

    .line 514
    const-string v11, "ia_ext2"

    invoke-virtual {v0, v11}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setIa_ext2(Ljava/lang/String;)V

    .line 515
    move/from16 v15, v31

    invoke-virtual {v10, v15}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMof_tplid(I)V

    .line 516
    invoke-virtual {v10, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMof_template_url(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v10, v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNscpt(I)V

    .line 518
    invoke-virtual {v10, v9}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPv_urls(Ljava/util/List;)V

    .line 519
    invoke-virtual {v10, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReq_ext_data(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move-object/from16 v14, v18

    move-object/from16 v13, v30

    goto :goto_5

    .line 553
    :catch_1
    move-exception v0

    move-object/from16 v9, v18

    goto/16 :goto_c

    .line 522
    :cond_5
    move/from16 v15, v31

    move-object/from16 v14, v18

    move-object/from16 v13, v30

    :try_start_b
    invoke-virtual {v14, v13}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->setMsg(Ljava/lang/String;)V

    .line 504
    :goto_5
    add-int/lit8 v5, v5, 0x1

    move/from16 v18, v8

    move-object/from16 v16, v13

    move-object/from16 v11, v19

    move-object/from16 v8, v25

    move-object/from16 v10, v29

    move-object/from16 v12, v32

    move-object v13, v2

    move/from16 v19, v15

    move-object/from16 v2, v24

    move-object v15, v14

    move-object/from16 v14, v33

    goto/16 :goto_4

    .line 553
    :catch_2
    move-exception v0

    move-object/from16 v14, v18

    goto/16 :goto_6

    .line 525
    :cond_6
    move-object/from16 v25, v8

    move-object/from16 v32, v12

    move-object v2, v13

    move-object/from16 v33, v14

    move-object v14, v15

    move-object/from16 v13, v16

    move/from16 v8, v18

    move/from16 v15, v19

    move-object/from16 v29, v24

    move-object/from16 v19, v11

    new-instance v5, Lccsancom/mbridge/msdk/out/Frame;

    invoke-direct {v5}, Lccsancom/mbridge/msdk/out/Frame;-><init>()V

    .line 526
    invoke-virtual {v0, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lccsancom/mbridge/msdk/out/Frame;->setParentSessionId(Ljava/lang/String;)V

    .line 527
    move-object/from16 v10, v23

    invoke-virtual {v0, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lccsancom/mbridge/msdk/out/Frame;->setSessionId(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v5, v1}, Lccsancom/mbridge/msdk/out/Frame;->setCampaigns(Ljava/util/List;)V

    .line 529
    move-object/from16 v11, v20

    move-object/from16 v1, v29

    invoke-virtual {v1, v11}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Lccsancom/mbridge/msdk/out/Frame;->setTemplate(I)V

    .line 530
    move-object/from16 v1, v32

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    add-int/lit8 v5, v21, 0x1

    move-object v12, v1

    move/from16 v18, v8

    move-object/from16 v20, v11

    move-object/from16 v11, v19

    move-object/from16 v1, v22

    move-object/from16 v8, v25

    move/from16 v19, v15

    move-object v15, v14

    move-object/from16 v14, v33

    move-object/from16 v35, v13

    move-object v13, v2

    move v2, v5

    move-object v5, v10

    move-object/from16 v10, v35

    goto/16 :goto_3

    .line 533
    :cond_7
    move-object v1, v12

    move-object v14, v15

    invoke-virtual {v14, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->setListFrames(Ljava/util/List;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    .line 534
    move-object v10, v14

    goto/16 :goto_9

    .line 553
    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v14, v15

    :goto_6
    move-object v9, v14

    goto/16 :goto_c

    .line 498
    :cond_8
    move-object/from16 v25, v8

    move-object v2, v13

    move-object/from16 v33, v14

    move-object v14, v15

    move/from16 v8, v18

    move/from16 v15, v19

    move-object v13, v10

    .line 534
    if-eqz v12, :cond_b

    :try_start_c
    invoke-virtual {v12}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_b

    .line 535
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 536
    const/4 v3, 0x0

    :goto_7
    invoke-virtual {v12}, Lccsanorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 537
    invoke-virtual {v12, v3}, Lccsanorg/json/JSONArray;->optJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v10

    .line 538
    invoke-virtual {v0, v7}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v4, v25

    invoke-virtual {v0, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    move-object/from16 v18, v14

    move-object/from16 v14, v33

    :try_start_d
    invoke-virtual {v0, v14}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    const/16 v17, 0x0

    move-object/from16 v19, v12

    move-object v12, v5

    move-object v5, v13

    move-object/from16 v13, v16

    move-object/from16 v20, v18

    move-object/from16 v18, v14

    move/from16 v14, v17

    move/from16 v34, v15

    move-object/from16 v15, v20

    move-object/from16 v16, p1

    :try_start_e
    invoke-static/range {v10 .. v16}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->parseCampaign(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLccsancom/mbridge/msdk/foundation/entity/CampaignUnit;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;

    move-result-object v10
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 539
    if-eqz v10, :cond_9

    .line 540
    move/from16 v11, v34

    :try_start_f
    invoke-virtual {v10, v11}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMof_tplid(I)V

    .line 541
    invoke-virtual {v10, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setMof_template_url(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v10, v8}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setNscpt(I)V

    .line 543
    invoke-virtual {v10, v9}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setPv_urls(Ljava/util/List;)V

    .line 544
    invoke-virtual {v10, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;->setReq_ext_data(Ljava/lang/String;)V

    .line 545
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    move-object/from16 v10, v20

    goto :goto_8

    .line 553
    :catch_5
    move-exception v0

    move-object/from16 v9, v20

    goto :goto_c

    .line 547
    :cond_9
    move/from16 v11, v34

    move-object/from16 v10, v20

    :try_start_10
    invoke-virtual {v10, v5}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->setMsg(Ljava/lang/String;)V

    .line 536
    :goto_8
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v25, v4

    move-object v13, v5

    move-object v14, v10

    move v15, v11

    move-object/from16 v33, v18

    move-object/from16 v12, v19

    goto :goto_7

    .line 553
    :catch_6
    move-exception v0

    move-object/from16 v10, v20

    goto :goto_a

    :catch_7
    move-exception v0

    move-object/from16 v10, v18

    goto :goto_a

    .line 550
    :cond_a
    move-object v10, v14

    invoke-virtual {v10, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->setAds(Ljava/util/ArrayList;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_9

    .line 553
    :catch_8
    move-exception v0

    goto :goto_a

    :catch_9
    move-exception v0

    move-object v10, v14

    goto :goto_a

    .line 534
    :cond_b
    move-object v10, v14

    .line 554
    :goto_9
    move-object v9, v10

    goto :goto_b

    .line 553
    :catch_a
    move-exception v0

    move-object v10, v15

    :goto_a
    move-object v9, v10

    goto :goto_c

    :catch_b
    move-exception v0

    const/4 v9, 0x0

    goto :goto_c

    .line 442
    :cond_c
    const/4 v9, 0x0

    .line 554
    :goto_b
    nop

    .line 555
    :goto_c
    return-object v9
.end method

.method public static parseV5CampaignUnit(Lccsanorg/json/JSONObject;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;
    .locals 1

    .line 373
    const-string v0, ""

    invoke-static {p0, v0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->parseV5CampaignUnit(Lccsanorg/json/JSONObject;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    move-result-object p0

    return-object p0
.end method

.method public static parseV5CampaignUnit(Lccsanorg/json/JSONObject;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;
    .locals 0

    .line 376
    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->parseCampaignUnit(Lccsanorg/json/JSONObject;Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public assembCParams()Ljava/lang/String;
    .locals 7

    .line 332
    const-string v0, "|"

    iget-object v1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->cParams:Ljava/lang/StringBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 333
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->cParams:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 336
    :cond_0
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->i()Ljava/lang/String;

    move-result-object v1

    .line 337
    nop

    .line 338
    nop

    .line 339
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a()Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;

    move-result-object v2

    const-string v3, "authority_general_data"

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/foundation/controller/authoritycontroller/a;->a(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    if-eqz v2, :cond_1

    .line 340
    :try_start_1
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/foundation/tools/m;->n(Lccsanandroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsancom/mbridge/msdk/foundation/tools/m;->h(Lccsanandroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lccsancom/mbridge/msdk/foundation/tools/m;->i(Lccsanandroid/content/Context;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 339
    :cond_1
    move-object v2, v3

    move-object v4, v2

    .line 345
    :goto_0
    iget-object v5, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->cParams:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->getAdType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "1"

    .line 346
    invoke-direct {p0, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v6, Lccsanandroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 347
    invoke-direct {p0, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "MAL_15.7.41"

    .line 348
    invoke-direct {p0, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    invoke-direct {p0, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/tools/m;->d(Lccsanandroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/controller/a;->d()Lccsancom/mbridge/msdk/foundation/controller/a;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/foundation/controller/a;->f()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lccsancom/mbridge/msdk/foundation/tools/m;->c(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 353
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    invoke-direct {p0, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    invoke-direct {p0, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    invoke-direct {p0, v3}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lccsancom/mbridge/msdk/foundation/same/a;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lccsancom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->nullToEmpty(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 366
    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iput-object v5, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->cParams:Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    goto :goto_1

    .line 367
    :catchall_0
    move-exception v0

    .line 368
    sget-object v1, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 370
    :goto_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->cParams:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdHtml()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->adHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getAdType()I
    .locals 1

    .line 280
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->adType:I

    return v0
.end method

.method public getAdZip()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->adZip:Ljava/lang/String;

    return-object v0
.end method

.method public getAds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getBannerHtml()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->bannerHtml:Ljava/lang/String;

    return-object v0
.end method

.method public getBannerUrl()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->bannerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCsp()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->csp:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getHtmlUrl()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->htmlUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIa_all_ext1()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ia_all_ext1:Ljava/lang/String;

    return-object v0
.end method

.method public getIa_all_ext2()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ia_all_ext2:Ljava/lang/String;

    return-object v0
.end method

.method public getIa_icon()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ia_icon:Ljava/lang/String;

    return-object v0
.end method

.method public getIa_ori()I
    .locals 1

    .line 156
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ia_ori:I

    return v0
.end method

.method public getIa_rst()I
    .locals 1

    .line 140
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ia_rst:I

    return v0
.end method

.method public getIa_url()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ia_url:Ljava/lang/String;

    return-object v0
.end method

.method public getJmDo()I
    .locals 1

    .line 248
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->jmDo:I

    return v0
.end method

.method public getListFrames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Frame;",
            ">;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->listFrames:Ljava/util/List;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlyImpressionUrl()Ljava/lang/String;
    .locals 1

    .line 304
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->onlyImpressionUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getParentSessionId()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->parentSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 2

    .line 388
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->requestId:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 389
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->requestId:Ljava/lang/String;

    return-object v0

    .line 391
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->onlyImpressionUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 392
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->onlyImpressionUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    .line 393
    if-eqz v0, :cond_1

    .line 394
    const-string v1, "k"

    invoke-virtual {v0, v1}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->requestId:Ljava/lang/String;

    .line 396
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->requestId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 399
    :cond_2
    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 400
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public getRks()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->rks:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSh()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->sh:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()I
    .locals 1

    .line 320
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->template:I

    return v0
.end method

.method public getUnitSize()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->unitSize:Ljava/lang/String;

    return-object v0
.end method

.method public getVcn()I
    .locals 2

    .line 226
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->vcn:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 227
    return v0

    .line 229
    :cond_0
    return v1
.end method

.method public setAdHtml(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->adHtml:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setAdType(I)V
    .locals 0

    .line 284
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->adType:I

    .line 285
    return-void
.end method

.method public setAdZip(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->adZip:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setAds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lccsancom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;)V"
        }
    .end annotation

    .line 316
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ads:Ljava/util/ArrayList;

    .line 317
    return-void
.end method

.method public setBannerHtml(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->bannerHtml:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setBannerUrl(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->bannerUrl:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setCsp(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->csp:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->domain:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setHtmlUrl(Ljava/lang/String;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->htmlUrl:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setIa_all_ext1(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ia_all_ext1:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setIa_all_ext2(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ia_all_ext2:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public setIa_icon(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ia_icon:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setIa_ori(I)V
    .locals 0

    .line 160
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ia_ori:I

    .line 161
    return-void
.end method

.method public setIa_rst(I)V
    .locals 0

    .line 144
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ia_rst:I

    .line 145
    return-void
.end method

.method public setIa_url(Ljava/lang/String;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->ia_url:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setJmDo(I)V
    .locals 0

    .line 252
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->jmDo:I

    .line 253
    return-void
.end method

.method public setListFrames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/out/Frame;",
            ">;)V"
        }
    .end annotation

    .line 260
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->listFrames:Ljava/util/List;

    .line 261
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->msg:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setOnlyImpressionUrl(Ljava/lang/String;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->onlyImpressionUrl:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public setParentSessionId(Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->parentSessionId:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setRks(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->rks:Ljava/util/HashMap;

    .line 205
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->sessionId:Ljava/lang/String;

    .line 269
    return-void
.end method

.method public setSh(Ljava/lang/String;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->sh:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setTemplate(I)V
    .locals 0

    .line 324
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->template:I

    .line 325
    return-void
.end method

.method public setUnitSize(Ljava/lang/String;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->unitSize:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setVcn(I)V
    .locals 0

    .line 234
    iput p1, p0, Lccsancom/mbridge/msdk/foundation/entity/CampaignUnit;->vcn:I

    .line 235
    return-void
.end method
